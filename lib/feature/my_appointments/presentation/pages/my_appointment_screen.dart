import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/my_appointments/presentation/helpers/my_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/appointments_tabbar_view.dart';
import 'package:patient_portal/feature/my_appointments/presentation/widgets/my_appointment_screen_tab_bar.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/resources/common_widgets.dart/succes_dailog.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyAppointmentScreenHelpers.selectedTabNotifier.value = 0;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MyAppointmentsBloc>().add(
        GetMyAppointments(
          params: MyAppointmentsParams.getMyAppointments(
            token: context.read<UserBloc>().state.user!.accessToken,
            mobileNumber: context.read<UserBloc>().state.user!.mobileNumber,
          ),
        ),
      );
    });
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            ValueListenableBuilder(
              valueListenable: MyAppointmentScreenHelpers.selectedTabNotifier,
              builder: (context, index, child) => TabBar(
                padding: const EdgeInsets.only(left: 4),
                onTap: (value) {
                  if (value != index) {
                    MyAppointmentScreenHelpers.selectedTabNotifier.value =
                        value;
                  }
                },
                splashFactory: NoSplash.splashFactory,
                indicatorPadding: EdgeInsets.zero,
                overlayColor: WidgetStateProperty.resolveWith<Color?>((
                  Set<WidgetState> states,
                ) {
                  return states.contains(WidgetState.focused)
                      ? null
                      : Colors.transparent;
                }),
                indicator: const BoxDecoration(),
                labelPadding: EdgeInsets.zero,
                isScrollable: true,
                tabs: [
                  MyAppointmentScreenTabBar(
                    title: 'All',
                    isSelected: index == 0 ? true : false,
                  ),
                  MyAppointmentScreenTabBar(
                    title: 'Consulted',
                    isSelected: index == 1 ? true : false,
                  ),
                  MyAppointmentScreenTabBar(
                    title: 'Not Consulted',
                    isSelected: index == 2 ? true : false,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 1,
              width: double.infinity,
              color: AppColors.dividerGrayColor,
            ),
            Expanded(
              child: BlocConsumer<MyAppointmentsBloc, MyAppointmentsState>(
                listener: (context, state) {
                  if (state.isAppointmentsCancelationFailed &&
                      !state.isAppointmentsCancelationSuccess) {
                  } else if (state.isAppointmentsCancelationSuccess &&
                      !state.isAppointmentsCancelationFailed) {
                    showGeneralDialog(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return Container();
                      },
                      context: context,
                      transitionBuilder:
                          (
                            context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child,
                          ) => Transform.scale(
                            scale: Curves.easeOut.transform(animation.value),
                            child: SucessDialog(
                              title: 'Appointment Canceled',
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                    );
                  }
                },
                builder: (context, state) {
                  return state.isAppointmentsFetching
                      ? LayoutBuilder(
                          builder: (context, constraints) => Center(
                            child: Image.asset(
                              'assets/gif_images/Ripple-0 2.gif',
                              width: constraints.maxWidth * .3,
                            ),
                          ),
                        )
                      : state.isAppointmentsFetchingFailed
                      ? Center(
                          child: Text(
                            state.error.message,
                            style: AppTextStyles.largeRobotoNormal,
                          ),
                        )
                      : state.monthTimeLineList.isEmpty
                      ? const Center(
                          child: Text(
                            'No appointments found',
                            style: AppTextStyles.largeRobotoNormal,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TabBarView(
                            children: [
                              AppointmentsTabbarView(
                                appointments: state.myAppointments,
                                monthTimeLineList: state.monthTimeLineList,
                              ),
                              AppointmentsTabbarView(
                                appointments: state.myConsultedAppointments,
                                monthTimeLineList:
                                    state.monthTimeLineListOfConsulted,
                              ),
                              AppointmentsTabbarView(
                                appointments: state.myNotConsultedAppointments,
                                monthTimeLineList:
                                    state.monthTimeLineListOfNotConsulted,
                              ),
                            ],
                          ),
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
