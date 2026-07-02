import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/string_extensions.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/active_outlined_button.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/member_selection_tile.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/reports/domain/entities/report.dart';
import 'package:patient_portal/feature/reports/domain/usecases/params/reports_params.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/widgets/reports_list_view.dart';

@RoutePage(name: 'ReportsRoute')
class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  late final ValueNotifier<int> _selectedTimeFilterIndexNotifier;
  List<String> _timeFilters = [];

  @override
  void initState() {
    super.initState();
    _selectedTimeFilterIndexNotifier = ValueNotifier(-1);
    _fetchReports();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _timeFilters = [
      context.lang.oneMonth,
      context.lang.threeMonths,
      context.lang.sixMonths,
      context.lang.oneYear,
      context.lang.all,
    ];
    if (_selectedTimeFilterIndexNotifier.value == -1) {
      _selectedTimeFilterIndexNotifier.value = _timeFilters.length - 1;
    }
  }

  @override
  void dispose() {
    _selectedTimeFilterIndexNotifier.dispose();
    super.dispose();
  }

  void _fetchReports() {
    final userState = context.read<UserBloc>().state;
    final User? user = userState.user;
    if (user == null) return;

    final memberId = userState.selectedMember?.id ?? user.idMember;

    context.read<ReportsBloc>().add(
      GetReports(
        params: ReportsParams.getReports(
          memberId: memberId,
          token: user.accessToken,
          mobileNumber: user.mobileNumber,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: BlocListener<UserBloc, UserState>(
        listenWhen: (previous, current) =>
            previous.selectedMember != current.selectedMember,
        listener: (context, state) => _fetchReports(),
        child: ValueListenableBuilder<int>(
          valueListenable: _selectedTimeFilterIndexNotifier,
          builder: (context, selectedIndex, _) {
            final selectedTimeFilter = _timeFilters[selectedIndex];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(height: 1),
                _buildMemberSelector(context),
                _buildTimeFilter(context, selectedIndex),
                const Gap(8),
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: 1,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: TabBar(
                            isScrollable: true,
                            tabAlignment: TabAlignment.start,
                            dividerColor: Colors.transparent,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.primaryCyan.withValues(
                                alpha: 0.1,
                              ),
                            ),
                            labelColor: AppColors.primaryCyan,
                            unselectedLabelColor: AppColors.textLight,
                            labelStyle: AppTextStyles.bodyLargeRobotoBold
                                .copyWith(fontSize: 14),
                            unselectedLabelStyle: AppTextStyles
                                .largeRobotoNormal
                                .copyWith(fontSize: 14),
                            tabs: [
                              Tab(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(context.lang.prescriptions),
                                ),
                              ),
                              Tab(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(context.lang.labReports),
                                ),
                              ),
                              Tab(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(context.lang.radiologyReports),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: BlocBuilder<ReportsBloc, ReportsState>(
                            builder: (context, state) {
                              if (state.isFetchingReports ||
                                  (!state.isFetchingSuccess &&
                                      !state.isFetchingFailed)) {
                                return const CommonLoadingView();
                              }

                              if (state.isFetchingFailed) {
                                return CommonErrorView(
                                  title: context.lang.unableToLoadReports,
                                  message: state.error.message,
                                  onRetry: _fetchReports,
                                );
                              }

                              return TabBarView(
                                children: [
                                  _buildReportsList(
                                    state.reports,
                                    context.lang.prescriptions,
                                    selectedTimeFilter,
                                    context,
                                  ),
                                  _buildReportsList(
                                    state.reports,
                                    context.lang.labReports,
                                    selectedTimeFilter,
                                    context,
                                  ),
                                  _buildReportsList(
                                    state.reports,
                                    context.lang.radiologyReports,
                                    selectedTimeFilter,
                                    context,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildMemberSelector(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        final member = state.selectedMember;
        final name =
            member?.name ??
            '${state.user?.firstName ?? ''} ${state.user?.lastName ?? ''}'
                .trim();
        final nationalId = member?.nationalId ?? context.lang.notProvided;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primaryCyan.withValues(alpha: 0.12),
                child: Text(
                  name.isNotEmpty
                      ? name[0].toUpperCase()
                      : context.lang.unknownInitial,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: AppColors.primaryCyan,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.toTitleCase(),
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: AppColors.textDark,
                        fontSize: 17,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Gap(4),
                    Text(
                      '${context.lang.nationalId}: $nationalId',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppColors.textLight.withValues(alpha: 0.8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              ActiveOutlinedButton(
                onPressed: () => _showMemberSelection(context),
                width: 120,
                height: 36,
                borderRadius: 10,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                borderColor: AppColors.primaryCyan,
                child: Text(
                  context.lang.changePatient,
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: AppColors.primaryCyan,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTimeFilter(BuildContext context, int selectedIndex) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 38,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: _timeFilters.length,
        separatorBuilder: (context, index) => const Gap(8),
        itemBuilder: (context, index) {
          final filter = _timeFilters[index];
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () => _selectedTimeFilterIndexNotifier.value = index,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.primaryCyan
                    : AppColors.primaryCyan.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected
                      ? AppColors.primaryCyan
                      : AppColors.primaryCyan.withValues(alpha: 0.1),
                  width: 1.2,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                filter,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: isSelected ? Colors.white : AppColors.primaryCyan,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildReportsList(
    List<Report> reports,
    String category,
    String timeFilter,
    BuildContext context,
  ) {
    List<Report> filteredReports;

    if (category == context.lang.labReports) {
      filteredReports = reports;
    } else if (category == context.lang.radiologyReports) {
      filteredReports = reports
          .where(
            (r) =>
                (r.xRayPdfUrl != null && r.xRayPdfUrl!.isNotEmpty) ||
                (r.ussPdfUrl != null && r.ussPdfUrl!.isNotEmpty) ||
                (r.ctPdfUrl != null && r.ctPdfUrl!.isNotEmpty),
          )
          .toList();
    } else if (category == context.lang.prescriptions) {
      filteredReports = [];
    } else {
      filteredReports = [];
    }

    if (timeFilter != context.lang.all) {
      final now = DateTime.now();
      DateTime? startDate;

      if (timeFilter == context.lang.oneMonth) {
        startDate = DateTime(now.year, now.month - 1, now.day);
      } else if (timeFilter == context.lang.threeMonths) {
        startDate = DateTime(now.year, now.month - 3, now.day);
      } else if (timeFilter == context.lang.sixMonths) {
        startDate = DateTime(now.year, now.month - 6, now.day);
      } else if (timeFilter == context.lang.oneYear) {
        startDate = DateTime(now.year - 1, now.month, now.day);
      }

      if (startDate != null) {
        filteredReports = filteredReports
            .where((r) => r.appointmentDate.isAfter(startDate!))
            .toList();
      }
    }

    if (filteredReports.isEmpty) {
      return CommonEmptyState(
        title: '',
        description: context.lang.noReportsFoundInSelectedUser,
        icon: Icons.search_rounded,
        actionLabel: context.lang.refresh,
        onAction: _fetchReports,
      );
    }

    return RefreshIndicator(
      onRefresh: () async => _fetchReports(),
      child: ReportsListView(reports: filteredReports),
    );
  }

  void _showMemberSelection(BuildContext context) {
    final theme = Theme.of(context);
    final userState = context.read<UserBloc>().state;
    final members = userState.user?.members ?? [];

    showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.6,
      ),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 24).copyWith(top: 5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const Gap(16),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    ...members.map(
                      (member) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: MemberSelectionTile(
                          member: member,
                          isSelected: userState.selectedMember?.id == member.id,
                          onTap: () {
                            context.read<UserBloc>().add(
                              SelectMember(member: member),
                            );
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
