import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/feature/add_document/presentation/pages/add_document_screen.dart';
import 'package:patient_portal/feature/add_member/presentation/pages/add_member_screen.dart';
import 'package:patient_portal/feature/book_appointment/presentation/pages/book_appointment_page.dart';
import 'package:patient_portal/feature/cart/presentation/pages/cart_screen.dart';
import 'package:patient_portal/feature/doctor_detail/presentation/pages/doctor_detail_screen.dart';
import 'package:patient_portal/feature/doctors/domain/entities/doctor.dart';
import 'package:patient_portal/feature/doctors/presentation/pages/doctors_screen.dart';
import 'package:patient_portal/feature/documents/presentation/pages/documents_screen.dart';
import 'package:patient_portal/feature/edit_profile_details/presentation/pages/edit_profile_details_screen.dart';
import 'package:patient_portal/feature/home/presentation/pages/home_screen.dart';
import 'package:patient_portal/feature/lab/presentation/pages/lab_item_detail_screen.dart';
import 'package:patient_portal/feature/lab/presentation/pages/lab_screen.dart';
import 'package:patient_portal/feature/login/presentation/pages/login_screen.dart';
import 'package:patient_portal/feature/main_screen/presentation/pages/main_screen.dart';
import 'package:patient_portal/feature/medical_insurances/presentation/pages/medical_insurance_screen.dart';
import 'package:patient_portal/feature/member_details/presentation/pages/member_details_screen.dart';
import 'package:patient_portal/feature/members/presentation/pages/member_selection_screen.dart';
import 'package:patient_portal/feature/members/presentation/pages/members_screen.dart';
import 'package:patient_portal/feature/my_appointments/presentation/pages/my_appointment_screen.dart';
import 'package:patient_portal/feature/notification/presentation/pages/notification_screen.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/feature/profile/presentation/pages/profile_screen.dart';
import 'package:patient_portal/feature/reports/presentation/pages/report_screen.dart';
import 'package:patient_portal/feature/reports/presentation/pages/reports_screen.dart';
import 'package:patient_portal/feature/set_password/presentation/pages/set_password_screen.dart';
import 'package:patient_portal/feature/speciality/presentation/pages/speciality_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.custom(
    duration: const Duration(milliseconds: 300),
    transitionsBuilder: _slideTransition,
  );

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: MainRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: SpecialityRoute.page),
    AutoRoute(page: DoctorsRoute.page),
    AutoRoute(page: AddMemberRoute.page),
    AutoRoute(page: BookAppointmentRoute.page),
    AutoRoute(page: LabRoute.page),
    AutoRoute(page: CartRoute.page),
    AutoRoute(page: MyAppointmentsRoute.page),
    AutoRoute(page: EditProfileDetailsRoute.page),
    AutoRoute(page: SetPasswordRoute.page),
    AutoRoute(page: MyProfileRoute.page),
    AutoRoute(page: MembersRoute.page),
    AutoRoute(page: MemberSelectionRoute.page),
    AutoRoute(page: ReportsRoute.page),
    AutoRoute(page: MemberDetailsRoute.page),
    AutoRoute(page: ReportRoute.page),
    AutoRoute(page: DoctorDetailRoute.page),
    AutoRoute(page: MedicalInsuranceRoute.page),
    AutoRoute(page: LabItemDetailRoute.page),
    AutoRoute(page: NotificationRoute.page),
    AutoRoute(page: DocumentsRoute.page),
    AutoRoute(page: AddDocumentRoute.page),
  ];
}

Widget _slideTransition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  const begin = Offset(1.0, 0.0);
  const end = Offset.zero;
  const curve = Curves.easeIn;
  final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(position: animation.drive(tween), child: child);
}
