import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/slot_bloc/slot_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/date_tab.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

import '../widgets/appointment_slot_section.dart';
import '../widgets/book_appointment_appbar.dart';
import '../widgets/book_appointment_bottom_navigation_bar.dart';
import '../widgets/member_selection_section.dart';

class BookAppointmentScreen extends StatelessWidget {
  final int appointmentId;
  final String doctorImage;
  final String doctorName;
  final int idDoctor;
  const BookAppointmentScreen({
    super.key,
    required this.appointmentId,
    required this.doctorImage,
    required this.doctorName,
    required this.idDoctor,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SlotBloc>().add(
        GetAvailableSlots(
          idDoctor: idDoctor,
          date: BookAppointmentScreenHelpers.selectedDateNotifier.value,
          token: context.read<UserBloc>().state.user!.accessToken,
        ),
      );
    });

    return Scaffold(
      appBar: const BookAppointmentAppbar(),
      body: DefaultTabController(
        initialIndex: BookAppointmentScreenHelpers.dateList.indexOf(
          BookAppointmentScreenHelpers.selectedDateNotifier.value,
        ),
        length: BookAppointmentScreenHelpers.dateList.length,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              onTap: (value) {
                if (BookAppointmentScreenHelpers.dateList[value] !=
                    BookAppointmentScreenHelpers.selectedDateNotifier.value) {
                  BookAppointmentScreenHelpers.selectedDateNotifier.value =
                      BookAppointmentScreenHelpers.dateList[value];
                  context.read<SlotBloc>().add(
                    GetAvailableSlots(
                      idDoctor: idDoctor,
                      date: BookAppointmentScreenHelpers.dateList[value],
                      token: context.read<UserBloc>().state.user!.accessToken,
                    ),
                  );
                }
              },
              indicatorColor: AppColors.vilot,
              indicatorWeight: 3,
              tabs: BookAppointmentScreenHelpers.dateList
                  .map(
                    (date) => ValueListenableBuilder(
                      valueListenable:
                          BookAppointmentScreenHelpers.selectedDateNotifier,
                      builder: (context, value, child) => DateTab(
                        date: date,
                        isSelected: value == date ? true : false,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: AppColors.dividerGrayColor,
            ),
            BlocBuilder<SlotBloc, SlotState>(
              builder: (context, state) {
                return Expanded(
                  child: state.isFetchingError
                      ? Center(
                          child: Text(
                            state.error.message,
                            style: AppTextStyles.bodyLargeRobotoSemiBold,
                          ),
                        )
                      : SingleChildScrollView(
                          child: Column(
                            children: [
                              state.isLoading
                                  ? Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const SizedBox(height: 10),
                                        Image.asset(
                                          'assets/gif_images/Ripple-0 2.gif',
                                          width: 100,
                                        ),
                                      ],
                                    )
                                  : AppointmentSlotSection(shift: state.shift),
                              Container(
                                height: 1,
                                width: double.infinity,
                                color: AppColors.dividerGrayColor,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height: 15),
                                  appointmentId == 0
                                      ? const MemberSelectionSection()
                                      : const SizedBox(),
                                ],
                              ),
                            ],
                          ),
                        ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: BookAppointmentBottomNavigationBar(
          appointmentId: appointmentId,
          doctorImage: doctorImage,
          doctorName: doctorName,
          idDoctor: idDoctor,
        ),
      ),
    );
  }
}
