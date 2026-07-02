import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_snack_bar.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/my_appointments/presentation/helpers/my_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/appointment_status_dialog.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/appointments_overview_card.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/appointments_tabbar_view.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/my_appointment_screen_tab_bar.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'MyAppointmentsRoute')
class MyAppointmentScreen extends StatefulWidget {
  const MyAppointmentScreen({super.key});

  @override
  State<MyAppointmentScreen> createState() => _MyAppointmentScreenState();
}

class _MyAppointmentScreenState extends State<MyAppointmentScreen> {
  @override
  void initState() {
    super.initState();
    MyAppointmentScreenHelpers.selectedTabNotifier.value = 0;
    _fetchAppointments();
  }

  void _fetchAppointments() {
    final user = context.read<UserBloc>().state.user!;
    context.read<MyAppointmentsBloc>().add(
      GetMyAppointments(
        params: MyAppointmentsParams.getMyAppointments(
          token: user.accessToken,
          mobileNumber: user.mobileNumber,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return DefaultTabController(
      length: 3,
      child: BlocConsumer<MyAppointmentsBloc, MyAppointmentsState>(
        listener: (context, state) async {
          if (state.isAppointmentsCancellationSuccess &&
              !state.isAppointmentsCancellationFailed) {
            await showDialog<void>(
              context: context,
              builder: (context) => AppointmentStatusDialog(
                title: context.lang.appointmentCanceled,
                message: context.lang.appointmentCanceledMessage,
                actionLabel: context.lang.done,
              ),
            );
          } else if (state.isAppointmentsCancellationFailed &&
              !state.isAppointmentsCancellationSuccess) {
            CommonSnackBar.show(
              context,
              message: state.error.message,
              type: SnackBarType.error,
            );
          }
        },
        builder: (context, state) {
          if (state.isAppointmentsFetching ||
              (!state.isAppointmentsFetchingSuccess &&
                  !state.isAppointmentsFetchingFailed)) {
            return const CommonLoadingView();
          }

          if (state.isAppointmentsFetchingFailed) {
            return CommonErrorView(
              title: context.lang.unableToLoadAppointments,
              message: state.error.message,
              onRetry: _fetchAppointments,
            );
          }

          return Container(
            color: colorScheme.surface,
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                    child: AppointmentsOverviewCard(
                      totalCount: state.myAppointments.length,
                      consultedCount: state.myConsultedAppointments.length,
                      upcomingCount: state.myNotConsultedAppointments.length,
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    child: Container(
                      height: 72,
                      decoration: BoxDecoration(
                        color: colorScheme.surface,
                        border: Border(
                          bottom: BorderSide(
                            color: colorScheme.outlineVariant.withValues(
                              alpha: .3,
                            ),
                            width: 1,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      alignment: Alignment.centerLeft,
                      child: _AppointmentsTabBar(
                        selectedIndexListenable:
                            MyAppointmentScreenHelpers.selectedTabNotifier,
                      ),
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      AppointmentsTabbarView(
                        title: context.lang.allAppointments,
                        appointments: state.myAppointments,
                        monthTimelineList: state.monthTimelineList,
                        emptyTitle: context.lang.noAppointmentsYet,
                        emptyMessage: context.lang.noAppointmentsMessage,
                        onRefresh: () async => _fetchAppointments(),
                      ),
                      AppointmentsTabbarView(
                        title: context.lang.consultedAppointments,
                        appointments: state.myConsultedAppointments,
                        monthTimelineList: state.monthTimelineListOfConsulted,
                        emptyTitle: context.lang.noConsultedAppointments,
                        emptyMessage:
                            context.lang.noConsultedAppointmentsMessage,
                        onRefresh: () async => _fetchAppointments(),
                      ),
                      AppointmentsTabbarView(
                        title: context.lang.upcomingAppointments,
                        appointments: state.myNotConsultedAppointments,
                        monthTimelineList:
                            state.monthTimelineListOfNotConsulted,
                        emptyTitle: context.lang.noUpcomingAppointments,
                        emptyMessage:
                            context.lang.noUpcomingAppointmentsMessage,
                        onRefresh: () async => _fetchAppointments(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverAppBarDelegate({required this.child});

  @override
  double get minExtent => 72.0;

  @override
  double get maxExtent => 72.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}

class _AppointmentsTabBar extends StatelessWidget {
  final ValueNotifier<int> selectedIndexListenable;

  const _AppointmentsTabBar({required this.selectedIndexListenable});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndexListenable,
      builder: (context, index, child) {
        return TabBar(
          onTap: (value) {
            if (value != index) {
              MyAppointmentScreenHelpers.selectedTabNotifier.value = value;
            }
          },
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          splashFactory: NoSplash.splashFactory,
          dividerColor: Colors.transparent,
          indicatorColor: Colors.transparent,
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (states) => states.contains(WidgetState.focused)
                ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.08)
                : null,
          ),
          labelPadding: const EdgeInsets.only(right: 8),
          padding: EdgeInsets.zero,
          tabs: [
            MyAppointmentScreenTabBar(
              title: context.lang.all,
              isSelected: index == 0,
            ),
            MyAppointmentScreenTabBar(
              title: context.lang.consulted,
              isSelected: index == 1,
            ),
            MyAppointmentScreenTabBar(
              title: context.lang.upcoming,
              isSelected: index == 2,
            ),
          ],
        );
      },
    );
  }
}
