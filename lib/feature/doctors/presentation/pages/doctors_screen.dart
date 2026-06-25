import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/feature_header.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/sliver_search_header.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/search_doctor_bloc/search_doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_tile.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctors_state_view.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'DoctorsRoute')
class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key, required this.idSpecilaity});

  final int idSpecilaity;

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchDoctors();
  }

  void _fetchDoctors() {
    final token = context.read<UserBloc>().state.user!.accessToken;
    context.read<DoctorBloc>().add(
      GetAvailableDoctorsByDepartment(
        idspeciality: widget.idSpecilaity,
        token: token,
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: const CommonAppbar(title: AppStaticTexts.doctors),
      body: BlocBuilder<DoctorBloc, DoctorState>(
        builder: (context, state) {
          if (state.isDoctorsFetching) {
            return const DoctorsLoadingView();
          }

          if (state.isDoctorsFetchingFailed) {
            return CommonErrorView(
              title: AppStaticTexts.unableToLoadDoctors,
              message: state.error.message,
              onRetry: _fetchDoctors,
            );
          }

          return CustomScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 5),
                sliver: SliverToBoxAdapter(
                  child: FeatureHeader(
                    title: AppStaticTexts.findDoctor,
                    subtitle: AppStaticTexts.findSpecialistSubtitle,
                    badgeText: state.doctors.isEmpty
                        ? null
                        : state.doctors.length == 1
                        ? '1 ${AppStaticTexts.doctorAvailable}'
                        : '${state.doctors.length} ${AppStaticTexts.doctorsAvailable}',
                  ),
                ),
              ),
              if (state.doctors.isNotEmpty)
                SliverSearchHeader(
                  controller: searchController,
                  title: AppStaticTexts.searchDoctorHint,
                  hintText: AppStaticTexts.searchDoctors,
                  onChanged: (value) {
                    context.read<SearchDoctorBloc>().add(
                      SearchDoctor(
                        searchKey: value.toLowerCase(),
                        doctors: state.doctors,
                      ),
                    );
                  },
                ),
              _DoctorsResultSliver(
                allDoctors: state.doctors,
                searchController: searchController,
                onRefresh: _fetchDoctors,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _DoctorsResultSliver extends StatelessWidget {
  const _DoctorsResultSliver({
    required this.allDoctors,
    required this.searchController,
    required this.onRefresh,
  });

  final List<Doctor> allDoctors;
  final TextEditingController searchController;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    if (allDoctors.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: CommonEmptyState(
          title: AppStaticTexts.noDoctorsFound,
          description: AppStaticTexts.noDoctorsFoundMessage,
          icon: Icons.medical_services_outlined,
          actionLabel: AppStaticTexts.refresh,
          onAction: onRefresh,
        ),
      );
    }

    return BlocBuilder<SearchDoctorBloc, SearchDoctorState>(
      builder: (context, searchState) {
        final doctors = searchController.text.isNotEmpty
            ? searchState.searchResult
            : allDoctors;

        if (doctors.isEmpty) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: CommonEmptyState(
              title: AppStaticTexts.noMatchingDoctor,
              description: AppStaticTexts.noMatchingDoctorMessage,
              icon: Icons.search_off_rounded,
            ),
          );
        }

        return SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          sliver: SliverList.separated(
            itemCount: doctors.length,
            separatorBuilder: (context, index) => const Gap(12),
            itemBuilder: (context, index) {
              return DoctorTile(doctor: doctors[index]);
            },
          ),
        );
      },
    );
  }
}
