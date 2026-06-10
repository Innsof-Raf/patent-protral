import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/resources/common_helpers/insurance_helpers.dart';
import 'package:patient_portal/core/route/route_constants.dart';

import 'member__selection_tile.dart';

class MemberSelectionSection extends StatelessWidget {
  const MemberSelectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Appoinment for',
                      style: AppTextStyles.subHeaddingSemiBoldRoboto,
                    ),
                    BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                        return Text(
                          state.user!.members.isEmpty
                              ? 'No members available add a member to book appointment'
                              : 'Found ${state.user!.members.length}  Members or add new member',
                          style: AppTextStyles.bodyTextRoboto,
                        );
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.vilot,
                  padding: const EdgeInsets.all(10),
                  shape: const CircleBorder(),
                  minimumSize: const Size(0, 0),
                ),
                onPressed: () {
                  InsuranceHelpers.insuranceCheackBoxNotifier.value = false;
                  Navigator.of(
                    context,
                  ).pushNamed(RouteConstants.addMemberScreen);
                },
                child: const Icon(Icons.add, color: AppColors.white),
              ),
            ],
          ),
          const SizedBox(height: 15),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return state.user!.members.isEmpty
                  ? const SizedBox()
                  : ValueListenableBuilder(
                      valueListenable:
                          BookAppointmentScreenHelpers.selectedMemberNotifier,
                      builder: (context, value, child) => ListView.separated(
                        padding: const EdgeInsets.only(bottom: 68),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 10),
                        itemBuilder: (context, index) => MemberSelectionTile(
                          isSelected: value == state.user!.members[index],
                          member: state.user!.members[index],
                        ),
                        itemCount: state.user!.members.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
