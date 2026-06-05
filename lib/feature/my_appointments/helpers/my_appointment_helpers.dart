import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';

import '../../../resources/urls.dart';
import '../../profile/models/member/member_model.dart';
import '../bloc/my_appointments_bloc.dart';

class MyAppointmentHelpers {
  static void cancelAppointment({
    required BuildContext context,
  }) {
    // if (!context
    //     .read<MyAppointmentsBloc>()
    //     .state
    //     .myAppointments
    //     .any((appointment) => appointment.isCanceling)) {
    //   showDialog(
    //       context: context, builder: ((context) => CancelBookingPopUp()));
    // }
  }
}
