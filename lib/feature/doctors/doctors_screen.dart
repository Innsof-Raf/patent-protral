import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/doctors/models/doctor_model/doctor_model.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_appbar.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';
import '../../resources/dimens.dart';

import 'blocs/doctor/doctor_bloc.dart';
import 'blocs/search_doctor/search_doctor_bloc.dart';
import 'widgets/doctor_tile.dart';

class DoctorsScreen extends StatelessWidget {
  final int idSpecilaity;
  const DoctorsScreen({super.key, required this.idSpecilaity});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<DoctorBloc>()
          .add(GetAvailableDoctorsByDepartment(idspeciality: idSpecilaity));
    });
    TextEditingController searchController = TextEditingController();
    final formKey = GlobalKey<FormState>();
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
            const Text(
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
                                          doctors: state.doctors));
                                },
                                controller: searchController,
                                style: AppTextStyles.largeRobotoNormal
                                    .copyWith(color: AppColors.textBluishDark),
                                decoration: const InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: AppColors.textDark,
                                    ),
                                    hintStyle: AppTextStyles.largeRobotoNormal,
                                    hintText: 'Search Here',
                                    contentPadding: EdgeInsets.all(15)),
                              )),
                        ],
                      )
                    : const SizedBox();
              },
            ),
            Dimens.constHeight,
            Expanded(child:
                BlocBuilder<DoctorBloc, DoctorState>(builder: (context, state) {
              return state.isDoctorsFetching
                  ? LayoutBuilder(
                      builder: (context, constraints) => Center(
                            child: Image.asset(
                              'assets/gif_images/Ripple-0 2.gif',
                              width: constraints.maxWidth * .3,
                            ),
                          ))
                  : state.isDoctorsFetchingFailed
                      ? Center(
                          child: Text(
                            state.error.message,
                            style: AppTextStyles.largeRobotoNormal,
                          ),
                        )
                      : BlocBuilder<SearchDoctorBloc, SearchDoctorState>(
                          builder: (sreachContext, sreachState) {
                            List<DoctorModel> doctors = [];
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
                                        const SizedBox(
                                      height: 10,
                                    ),
                                    itemCount: doctors.length,
                                    itemBuilder: (context, index) {
                                      return DoctorTile(
                                        doctor: doctors[index],
                                      );
                                    },
                                  );
                          },
                        );
            }))
          ],
        ),
      ),
    );
  }
}
