import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/search_doctor_bloc/search_doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_tile.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctors_header.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctors_search_field.dart';
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
      appBar: const CommonAppbar(title: 'Doctors'),
      body: BlocBuilder<DoctorBloc, DoctorState>(
        builder: (context, state) {
          if (state.isDoctorsFetching) {
            return const DoctorsLoadingView();
          }

          if (state.isDoctorsFetchingFailed) {
            return DoctorsMessageView(
              title: 'Unable to load doctors',
              message: state.error.message,
              isError: true,
            );
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
                child: Column(
                  children: [
                    DoctorsHeader(count: state.doctors.length),
                    if (state.doctors.isNotEmpty) ...[
                      const SizedBox(height: 14),
                      DoctorsSearchField(
                        controller: searchController,
                        onChanged: (value) {
                          context.read<SearchDoctorBloc>().add(
                            SearchDoctor(
                              searchKey: value.toLowerCase(),
                              doctors: state.doctors,
                            ),
                          );
                        },
                      ),
                    ],
                  ],
                ),
              ),
              Expanded(
                child: _DoctorsResultList(
                  allDoctors: state.doctors,
                  searchController: searchController,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _DoctorsResultList extends StatelessWidget {
  const _DoctorsResultList({
    required this.allDoctors,
    required this.searchController,
  });

  final List<Doctor> allDoctors;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    if (allDoctors.isEmpty) {
      return const DoctorsMessageView(
        title: 'No doctors found',
        message: 'Try another speciality or check again later.',
      );
    }

    return BlocBuilder<SearchDoctorBloc, SearchDoctorState>(
      builder: (context, searchState) {
        final doctors = searchController.text.isNotEmpty
            ? searchState.searchResult
            : allDoctors;

        if (doctors.isEmpty) {
          return const DoctorsMessageView(
            title: 'No matching doctor',
            message: 'Try searching by another name or speciality.',
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemCount: doctors.length,
          itemBuilder: (context, index) {
            return DoctorTile(doctor: doctors[index]);
          },
        );
      },
    );
  }
}
