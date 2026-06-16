import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/core/gen/assets.gen.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/book_appointment_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/appointment_slot_section.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_bottom_navigation_bar.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/book_appointment_screen_helpers.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/date_tab.dart';
import 'package:patient_portal/feature/book_appointment/presentation/widgets/member_selection_section.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';

@RoutePage(name: 'BookAppointmentRoute')
class BookAppointmentScreen extends StatefulWidget {
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
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  @override
  void initState() {
    super.initState();
    BookAppointmentScreenHelpers.createDateList();
    _fetchSlots(BookAppointmentScreenHelpers.selectedDateNotifier.value);
  }

  void _fetchSlots(DateTime date) {
    context.read<BookAppointmentBloc>().add(
      GetAvailableSlots(
        idDoctor: widget.idDoctor,
        date: date,
        token: context.read<UserBloc>().state.user!.accessToken,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const CommonAppbar(title: 'Book Appointment', centerTitle: true),
      body: Column(
        children: [
          _DateSelector(
            onDateSelected: (date) {
              if (date !=
                  BookAppointmentScreenHelpers.selectedDateNotifier.value) {
                BookAppointmentScreenHelpers.selectedDateNotifier.value = date;
                BookAppointmentScreenHelpers.selectedSlotNotifier.value = null;
                _fetchSlots(date);
              }
            },
          ),
          const Divider(height: 1),
          Expanded(
            child: BlocBuilder<BookAppointmentBloc, BookAppointmentState>(
              builder: (context, state) {
                if (state.isFetchingError) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.error_outline_rounded,
                            size: 64,
                            color: theme.colorScheme.error,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            state.error.message,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleMedium,
                          ),
                          const SizedBox(height: 24),
                          FilledButton.icon(
                            onPressed: () => _fetchSlots(
                              BookAppointmentScreenHelpers
                                  .selectedDateNotifier
                                  .value,
                            ),
                            icon: const Icon(Icons.refresh_rounded),
                            label: const Text('Retry'),
                          ),
                        ],
                      ),
                    ),
                  );
                }

                return SingleChildScrollView(
                  child: Column(
                    children: [
                      if (state.isSlotLoading)
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Center(
                            child: Image.asset(
                              Assets.gifImages.ripple02.path,
                              width: 100,
                            ),
                          ),
                        )
                      else
                        AppointmentSlotSection(shift: state.shift),
                      if (widget.appointmentId == 0) ...[
                        const Divider(height: 1),
                        const MemberSelectionSection(),
                      ],
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BookAppointmentBottomNavigationBar(
        appointmentId: widget.appointmentId,
        doctorImage: widget.doctorImage,
        doctorName: widget.doctorName,
        idDoctor: widget.idDoctor,
      ),
    );
  }
}

class _DateSelector extends StatelessWidget {
  final ValueChanged<DateTime> onDateSelected;

  const _DateSelector({required this.onDateSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: BookAppointmentScreenHelpers.dateList.length,
        itemBuilder: (context, index) {
          final date = BookAppointmentScreenHelpers.dateList[index];
          return ValueListenableBuilder<DateTime>(
            valueListenable: BookAppointmentScreenHelpers.selectedDateNotifier,
            builder: (context, selectedDate, child) {
              final isSelected = DateUtils.isSameDay(date, selectedDate);
              return GestureDetector(
                onTap: () => onDateSelected(date),
                child: DateTab(date: date, isSelected: isSelected),
              );
            },
          );
        },
      ),
    );
  }
}
