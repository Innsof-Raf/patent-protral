import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_error_view.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_loading_view.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/params/my_appointments_params.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/my_appointments/presentation/helpers/my_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/my_appointments/presentation/helpers/my_appointments_snackbar.dart';
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
              builder: (context) => const AppointmentStatusDialog(
                title: 'Appointment canceled',
                message:
                    'The appointment has been removed from your upcoming schedule.',
                actionLabel: 'Done',
              ),
            );
          } else if (state.isAppointmentsCancellationFailed &&
              !state.isAppointmentsCancellationSuccess) {
            showMyAppointmentsSnackBar(context, message: state.error.message);
          }
        },
        builder: (context, state) {
          if (state.isAppointmentsFetching) {
            return const CommonLoadingView();
          }

          if (state.isAppointmentsFetchingFailed) {
            return CommonErrorView(
              title: 'Unable to load appointments',
              message: state.error.message,
              onRetry: _fetchAppointments,
            );
          }

          return NestedScrollView(
            key: const ValueKey('my_appointments_nested_scroll_view'),
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
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
                      height: 64,
                      color: colorScheme.surface,
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                      alignment: Alignment.bottomCenter,
                      child: _AppointmentsTabBar(
                        selectedIndexListenable:
                            MyAppointmentScreenHelpers.selectedTabNotifier,
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                AppointmentsTabbarView(
                  title: 'All appointments',
                  appointments: state.myAppointments,
                  monthTimelineList: state.monthTimelineList,
                  emptyTitle: 'No appointments yet',
                  emptyMessage:
                      'Your bookings will appear here once available.',
                ),
                AppointmentsTabbarView(
                  title: 'Consulted appointments',
                  appointments: state.myConsultedAppointments,
                  monthTimelineList: state.monthTimelineListOfConsulted,
                  emptyTitle: 'No consulted appointments',
                  emptyMessage:
                      'Completed visits will appear here after consultation.',
                ),
                AppointmentsTabbarView(
                  title: 'Upcoming appointments',
                  appointments: state.myNotConsultedAppointments,
                  monthTimelineList: state.monthTimelineListOfNotConsulted,
                  emptyTitle: 'No upcoming appointments',
                  emptyMessage:
                      'You do not have any scheduled visits right now.',
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
  double get minExtent => 64.0;

  @override
  double get maxExtent => 64.0;

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
            MyAppointmentScreenTabBar(title: 'All', isSelected: index == 0),
            MyAppointmentScreenTabBar(
              title: 'Consulted',
              isSelected: index == 1,
            ),
            MyAppointmentScreenTabBar(
              title: 'Upcoming',
              isSelected: index == 2,
            ),
          ],
        );
      },
    );
  }
}
