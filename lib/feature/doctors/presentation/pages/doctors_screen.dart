import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:patient_portal/core/resources/app_static_texts.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_empty_state.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/search_doctor_bloc/search_doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_tile.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctors_state_view.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

@RoutePage(name: 'DoctorsRoute')
class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key, required this.speciality});

  final Speciality speciality;

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
        idspeciality: widget.speciality.idSpeciality,
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
      appBar: CommonAppbar(title: widget.speciality.specialityName),
      body: BlocBuilder<DoctorBloc, DoctorState>(
        builder: (context, state) {
          if (state.isDoctorsFetching) return const DoctorsLoadingView();

          if (state.isDoctorsFetchingFailed) {
            return CommonErrorView(
              title: AppStaticTexts.unableToLoadDoctors,
              message: state.error.message,
              onRetry: _fetchDoctors,
            );
          }

          return RefreshIndicator(
            onRefresh: () async => _fetchDoctors(),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  elevation: 0,
                  scrolledUnderElevation: 0,
                  backgroundColor: theme.colorScheme.surface,
                  surfaceTintColor: theme.colorScheme.surface,
                  centerTitle: false,
                  automaticallyImplyLeading: false,
                  title: Container(
                    height: 46,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ).copyWith(top: 5),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest
                          .withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: theme.colorScheme.outlineVariant.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                    child: TextField(
                      controller: searchController,
                      onChanged: (value) {
                        context.read<SearchDoctorBloc>().add(
                          SearchDoctor(
                            searchKey: value.toLowerCase(),
                            doctors: state.doctors,
                          ),
                        );
                      },
                      decoration: InputDecoration(
                        hintText: AppStaticTexts.searchDoctors,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: 0.4,
                          ),
                          size: 20,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 11,
                        ),
                      ),
                    ),
                  ),
                  titleSpacing: 0,
                ),
                _DoctorsResultSliver(
                  allDoctors: state.doctors,
                  searchController: searchController,
                  onRefresh: _fetchDoctors,
                ),
              ],
            ),
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
