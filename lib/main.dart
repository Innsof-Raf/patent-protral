import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/add_document/presentation/bloc/add_document_bloc.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/appointment_bloc/appointment_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/slot_bloc/slot_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/search_doctor_bloc/search_doctor_bloc.dart';
import 'package:patient_portal/feature/documents/presentation/bloc/documents_bloc/documents_bloc.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/login_with_password_bloc/login_with_password_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_verification_bloc/otp_verification_bloc.dart';
import 'package:patient_portal/feature/member_details/presentation/bloc/member_detail_bloc.dart';
import 'package:patient_portal/feature/members/presentation/bloc/delete_member_bloc/delete_member_bloc.dart';
import 'package:patient_portal/feature/members/presentation/bloc/member_search_bloc/member_search_bloc.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/feature/report/bloc/report_bloc.dart';
import 'package:patient_portal/feature/reports/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/set_password/bloc/change_password_bloc.dart';
import 'package:patient_portal/feature/speciality/blocs/search_bloc/search_speciality_bloc_bloc.dart';
import 'package:patient_portal/feature/speciality/blocs/speciality_bloc/speciality_bloc.dart';
import 'package:patient_portal/injection_container.dart' as di;
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/app_text_styles.dart';
import 'package:patient_portal/route/route_constants.dart';
import 'package:patient_portal/route/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OtpGenerationBloc>(
          create: (context) => di.sl<OtpGenerationBloc>(),
        ),
        BlocProvider<OtpVerificationBloc>(
          create: (context) => di.sl<OtpVerificationBloc>(),
        ),
        BlocProvider<DoctorBloc>(create: (context) => di.sl<DoctorBloc>()),
        BlocProvider<SearchDoctorBloc>(
          create: (context) => di.sl<SearchDoctorBloc>(),
        ),
        BlocProvider(create: (context) => UserBloc()),
        BlocProvider(create: (context) => SpecialityBloc()),
        BlocProvider(create: (context) => di.sl<HomeBloc>()),
        BlocProvider(create: (context) => di.sl<AddMemberBloc>()),
        BlocProvider(create: (context) => di.sl<SlotBloc>()),
        BlocProvider(create: (context) => di.sl<AppointmentBloc>()),
        BlocProvider(create: (context) => di.sl<MemberSearchBloc>()),
        BlocProvider(create: (context) => di.sl<DeleteMemberBloc>()),
        BlocProvider(create: (context) => di.sl<MemberDetailBloc>()),
        BlocProvider(create: (context) => di.sl<MyAppointmentsBloc>()),
        BlocProvider(create: (context) => di.sl<ItemsBloc>()),
        BlocProvider(create: (context) => ReportsBloc()),
        BlocProvider(create: (context) => ChangePasswordBloc()),
        BlocProvider(create: (context) => SearchSpecialityBloc()),
        BlocProvider(create: (context) => ReportBloc()),
        BlocProvider(create: (context) => di.sl<DocumentsBloc>()),
        BlocProvider(create: (context) => di.sl<AddDocumentBloc>()),
        BlocProvider<LoginWithPasswordBloc>(
          create: (context) => di.sl<LoginWithPasswordBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: AppColors.vilot,
            onPrimary: AppColors.white,
            onSurface: AppColors.textDark,
          ),
          primaryColor: AppColors.vilot,
          scaffoldBackgroundColor: AppColors.white,
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              foregroundColor: AppColors.textLight,
            ),
          ),
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            titleMedium: AppTextStyles.largeRobotoNormal.copyWith(
              color: AppColors.textDark,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.all(15),
            labelStyle: AppTextStyles.largeRobotoNormal,
            floatingLabelStyle: AppTextStyles.bodyTextRoboto,
            errorMaxLines: 2,
            errorStyle: AppTextStyles.bodyTextInter.copyWith(
              color: AppColors.red,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: AppColors.textFormFIeldBagroundColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: AppColors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: AppColors.red),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.textFormFIeldBagroundColor,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(
                color: Color.fromRGBO(202, 212, 224, 1),
              ),
            ),
          ),
        ),
        initialRoute: RouteConstants.loginScreen,
        onGenerateRoute: (settings) => Approuter.generateRoute(settings),
      ),
    );
  }
}
