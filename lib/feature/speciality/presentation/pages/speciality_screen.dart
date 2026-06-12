import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/dimens.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/params/speciality_params.dart';
import 'package:patient_portal/feature/speciality/presentation/bloc/speciality_bloc/speciality_bloc.dart';
import 'package:patient_portal/feature/speciality/presentation/widgets/speciality_tile.dart';

@RoutePage(name: 'SpecialityRoute')
class SpecialityScreen extends StatefulWidget {
  const SpecialityScreen({super.key});

  @override
  State<SpecialityScreen> createState() => _SpecialityScreenState();
}

class _SpecialityScreenState extends State<SpecialityScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<SpecialityBloc>().add(
      FetchSpecialities(
        params: SpecialityParams.fetchSpecialities(
          token: context.read<UserBloc>().state.user!.accessToken,
          idBusUnit: 3,
        ),
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: Dimens.constPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimens.constHeight,
            const Text(
              'Find Specialist',
              style: AppTextStyles.subHeaddingSemiBoldRoboto,
            ),
            const Text(
              'Consult top doctors online for any health concern',
              style: AppTextStyles.bodyTextInter,
            ),
            BlocBuilder<SpecialityBloc, SpecialityState>(
              builder: (context, state) {
                return !state.isFetching &&
                        !state.isFetchingError &&
                        state.specialities.isNotEmpty
                    ? Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Dimens.constHeight,
                            TextFormField(
                              keyboardType: TextInputType.text,
                              onChanged: (value) {
                                context.read<SpecialityBloc>().add(
                                  SearchSpecialities(
                                    params: SpecialityParams.searchSpecialities(
                                      searchKey: value,
                                      specialities: state.specialities,
                                    ),
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
                          ],
                        ),
                      )
                    : const SizedBox();
              },
            ),
            Dimens.constHeight,
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) =>
                    BlocBuilder<SpecialityBloc, SpecialityState>(
                      builder: (context, state) {
                        if (state.isFetching) {
                          return Center(
                            child: Image.asset(
                              'assets/gif_images/Ripple-0 2.gif',
                              width: constraints.maxHeight * .3,
                            ),
                          );
                        } else if (state.isFetchingError) {
                          return Center(
                            child: Text(
                              state.error.message,
                              style: AppTextStyles.largeRobotoNormal,
                            ),
                          );
                        } else {
                          List<Speciality> specialities = [];
                          if (searchController.text.isNotEmpty) {
                            specialities = state.searchResult;
                          } else {
                            specialities = state.specialities;
                          }
                          return specialities.isEmpty
                              ? const Center(
                                  child: Text(
                                    'No Specialities Found',
                                    style: AppTextStyles.largeRobotoNormal,
                                  ),
                                )
                              : GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: specialities.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 1.5,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        crossAxisCount:
                                            constraints.maxWidth < 280
                                            ? 3
                                            : constraints.maxWidth < 700
                                            ? 4
                                            : 5,
                                      ),
                                  itemBuilder: (context, index) =>
                                      SpecialityTile(
                                        speciality: specialities[index],
                                      ),
                                );
                        }
                      },
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
