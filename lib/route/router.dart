import 'package:flutter/material.dart';
import 'package:patient_portal/feature/add_document/presentation/pages/add_document_screen.dart';
import 'package:patient_portal/feature/add_member/presentation/pages/add_member_screen.dart';
import 'package:patient_portal/feature/book_appointment/presentation/pages/book_appointment_page.dart';
import 'package:patient_portal/feature/cart/presentation/pages/cart_screen.dart';
import 'package:patient_portal/feature/doctor_detail/presentation/pages/doctor_detail_screen.dart';
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
import 'package:patient_portal/feature/members/presentation/pages/members_screen.dart';
import 'package:patient_portal/feature/my_appointments/presentation/pages/my_appointment_screen.dart';
import 'package:patient_portal/feature/notification/presentation/pages/notification_screen.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/presentation/pages/profile_screen.dart';
import 'package:patient_portal/feature/report/report_screen.dart';
import 'package:patient_portal/feature/reports/reports_screen.dart';
import 'package:patient_portal/feature/set_password/set_password_screen.dart';
import 'package:patient_portal/feature/speciality/speciality_screen.dart';
import 'package:patient_portal/route/route_constants.dart';

class Approuter {
  static Duration trasitionDuration() => const Duration(milliseconds: 300);

  static Widget trasition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    const curve = Curves.easeIn;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(position: animation.drive(tween), child: child);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.addMemberScreen:
        MemberModel? member;
        if (settings.arguments != null) {
          final Map arguments = settings.arguments as Map;
          member = arguments['member'];
        }
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              AddMemberScreen(member: member),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.doctorDetailScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const DoctorDetailScreen(),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.myAppointmentsScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MyAppointmentScreen(),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.membersScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MembersScreen(),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.cartScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const CartScreen(),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.reportScreen:
        final Map arguments = settings.arguments as Map;
        final String doctortName = arguments['doctor_name'];
        final DateTime consultedDateTime = arguments['consulted_date_time'];
        final String pdfUrl = arguments['pdf_url'];
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) => ReportScreen(
            consultedDateTime: consultedDateTime,
            doctorName: doctortName,
            pdfUrl: pdfUrl,
          ),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.labScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LabScreen(),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.bookAppointmentScreen:
        final Map arguments = settings.arguments as Map;
        final String doctorName = arguments['doctor_name'];
        final String doctorImage = arguments['doctor_image'];
        final int idDoctor = arguments['id_doctor'];
        final int appointmentId = arguments['appointment_id'];
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              BookAppointmentScreen(
                appointmentId: appointmentId,
                doctorImage: doctorImage,
                doctorName: doctorName,
                idDoctor: idDoctor,
              ),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.specialityScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              const SpecilityScreen(),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.doctorsScreen:
        final Map arguments = settings.arguments as Map;
        final int idSpeciality = arguments['id_speciality'];
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: (context, animation, secondaryAnimation) =>
              DoctorsScreen(idSpecilaity: idSpeciality),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LogInScreen(),
          settings: RouteSettings(name: settings.name),
        );

      case RouteConstants.editProfileDetailsScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              const EditProfileDetailsScreen()),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.addDocumentScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              const AddDocumentScreen()),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.documentsScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              const DocumentsScreen()),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.medicalInsuranceScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              const MedicalInsurancesScreen()),
          settings: RouteSettings(name: settings.name),
        );

      case RouteConstants.setPasswordScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              const SetPasswordScreen()),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.myProfileScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              const ProfileScreen()),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.memberDetailsScreen:
        final Map arguments = settings.arguments as Map;
        final int memberId = arguments['member_id'];
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              MemberDetailsScreen(memberId: memberId)),
          settings: RouteSettings(name: settings.name),
        );

      case RouteConstants.notificationScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              const Notificationscreen()),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.reportsScreen:
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              const ReportsScreen()),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.labItemDetailScreen:
        final Map arguments = settings.arguments as Map;
        final int idItem = arguments['id_item'];
        return PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: trasition,
          pageBuilder: ((context, animation, secondaryAnimation) =>
              LabItemDetailScreen(idItem: idItem)),
          settings: RouteSettings(name: settings.name),
        );
      case RouteConstants.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: RouteSettings(name: settings.name),
        );

      case RouteConstants.mainScreen:
      default:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
          settings: RouteSettings(name: settings.name),
        );
    }
  }
}
