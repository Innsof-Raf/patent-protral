import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/search_doctor_bloc/search_doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/widgets/doctor_tile.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/gen/assets.gen.dart';

@RoutePage(name: 'DoctorsRoute')
class DoctorsScreen extends StatefulWidget {
  final int idSpecilaity;

  const DoctorsScreen({super.key, required this.idSpecilaity});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  final TextEditingController searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    log('idSpecilaity: ${widget.idSpecilaity}', name: 'DoctorsScreen');
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
    return Scaffold(
      appBar: const CommonAppbar(title: 'Doctors'),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: Dimens.constPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimens.constHeight,
            const Text(
              'Find Doctor',
              style: AppTextStyles.subHeaddingSemiBoldRoboto,
            ),
            Text(
              'Consult top doctors online for any health concern',
              style: AppTextStyles.bodyTextInter,
            ),
            BlocBuilder<DoctorBloc, DoctorState>(
              builder: (context, state) {
                return !state.isDoctorsFetching &&
                        !state.isDoctorsFetchingFailed &&
                        state.doctors.isNotEmpty
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Dimens.constHeight,
                          Form(
                            key: formKey,
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                context.read<SearchDoctorBloc>().add(
                                  SearchDoctor(
                                    searchKey: value.toLowerCase(),
                                    doctors: state.doctors,
                                  ),
                                );
                              },
                              controller: searchController,
                              style: AppTextStyles.largeRobotoNormal.copyWith(
                                color: AppColors.textBluishDark,
                              ),
                              decoration: const InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: AppColors.textDark,
                                ),
                                hintStyle: AppTextStyles.largeRobotoNormal,
                                hintText: 'Search Here',
                                contentPadding: EdgeInsets.all(15),
                              ),
                            ),
                          ),
                        ],
                      )
                    : const SizedBox.shrink();
              },
            ),
            Dimens.constHeight,
            Expanded(
              child: BlocBuilder<DoctorBloc, DoctorState>(
                builder: (context, state) {
                  return state.isDoctorsFetching
                      ? LayoutBuilder(
                          builder: (context, constraints) => Center(
                            child: Image.asset(
                              Assets.gifImages.ripple02.path,
                              width: constraints.maxWidth * .3,
                            ),
                          ),
                        )
                      : state.isDoctorsFetchingFailed
                      ? Center(
                          child: Text(
                            state.error.message,
                            style: AppTextStyles.largeRobotoNormal,
                          ),
                        )
                      : BlocBuilder<SearchDoctorBloc, SearchDoctorState>(
                          builder: (sreachContext, sreachState) {
                            List<Doctor> doctors = [];
                            if (searchController.text.isNotEmpty) {
                              doctors = sreachState.searchResult;
                            } else {
                              doctors = state.doctors;
                            }
                            return doctors.isEmpty
                                ? const Center(
                                    child: Text(
                                      'No doctor Found',
                                      style: AppTextStyles.largeRobotoNormal,
                                    ),
                                  )
                                : ListView.separated(
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(height: 10),
                                    itemCount: doctors.length,
                                    itemBuilder: (context, index) {
                                      return DoctorTile(doctor: doctors[index]);
                                    },
                                  );
                          },
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
