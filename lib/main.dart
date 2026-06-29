import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:patient_portal/core/injection_container.dart' as di;
import 'package:patient_portal/core/resources/app_colors.dart';
import 'package:patient_portal/core/resources/app_text_styles.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/add_document/presentation/bloc/add_document_bloc.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/book_appointment_bloc.dart';
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
import 'package:patient_portal/feature/notification/presentation/bloc/notification_bloc.dart';
import 'package:patient_portal/feature/profile/data/datasources/user_local_data_source.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/set_password/presentation/bloc/change_password_bloc.dart';
import 'package:patient_portal/feature/speciality/presentation/bloc/speciality_bloc/speciality_bloc.dart';

final _appRouter = AppRouter();

const _systemUiOverlayStyle = SystemUiOverlayStyle(
  statusBarColor: AppColors.black,
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.transparent,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarContrastEnforced: false,
);

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await di.init();

  final initialUser = await di.sl<UserLocalDataSource>().getUser();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(_systemUiOverlayStyle);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp(initialUser: initialUser));
}

class MyApp extends StatelessWidget {
  final User? initialUser;

  const MyApp({super.key, this.initialUser});

  ThemeData _buildTheme() {
    final colorScheme =
        ColorScheme.fromSeed(
          seedColor: AppColors.primaryCyan,
          brightness: Brightness.light,
        ).copyWith(
          primary: AppColors.primaryCyan,
          onPrimary: AppColors.white,
          primaryContainer: const Color(0xffCFF8FF),
          onPrimaryContainer: const Color(0xff0B3C4A),
          secondary: const Color(0xff14B8A6),
          onSecondary: AppColors.white,
          secondaryContainer: const Color(0xffCCFBF1),
          surface: AppColors.white,
          surfaceContainerHighest: const Color(0xffEAF7FA),
          outline: const Color(0xffA5C4CC),
          outlineVariant: const Color(0xffD1E6EB),
          onSurface: AppColors.textDark,
          onSurfaceVariant: AppColors.textLight,
          error: AppColors.red,
          shadow: const Color(0xff0F172A),
        );

    final baseTheme = ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      primaryColor: AppColors.primaryCyan,
      scaffoldBackgroundColor: const Color(0xffF6FCFD),
      canvasColor: AppColors.white,
      dividerColor: colorScheme.outlineVariant,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: _systemUiOverlayStyle,
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.textDark,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          foregroundColor: colorScheme.primary,
          textStyle: AppTextStyles.bodyTextRobotoSemiBold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          disabledBackgroundColor: AppColors.disabledBackgroundColor,
          disabledForegroundColor: AppColors.disabledTextColor,
          minimumSize: const Size.fromHeight(52),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          side: BorderSide(color: colorScheme.primary.withValues(alpha: .2)),
          minimumSize: const Size.fromHeight(52),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      cardTheme: CardThemeData(
        color: AppColors.white,
        elevation: 0,
        shadowColor: colorScheme.shadow.withValues(alpha: .06),
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: colorScheme.outlineVariant.withValues(alpha: .8),
          ),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colorScheme.primary,
        linearTrackColor: colorScheme.primaryContainer,
        circularTrackColor: colorScheme.primaryContainer.withValues(alpha: .45),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(15),
        labelStyle: AppTextStyles.largeRobotoNormal,
        floatingLabelStyle: AppTextStyles.bodyTextRoboto.copyWith(
          color: colorScheme.primary,
        ),
        hintStyle: AppTextStyles.bodyTextRoboto.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest.withValues(alpha: .6),
        errorMaxLines: 2,
        errorStyle: AppTextStyles.bodyTextInter.copyWith(color: AppColors.red),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: colorScheme.outlineVariant),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: AppColors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(color: AppColors.red, width: 1.4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorScheme.primary, width: 1.4),
          borderRadius: BorderRadius.circular(18),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(color: colorScheme.outlineVariant),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.white,
        surfaceTintColor: Colors.transparent,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle: AppTextStyles.bodyTextRoboto.copyWith(
          color: colorScheme.onInverseSurface,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      ),
      textTheme: TextTheme(
        displayLarge: AppTextStyles.xXXLargeRobotoSemiBold,
        displayMedium: AppTextStyles.xXLargeRobotoSemiBold,
        headlineLarge: AppTextStyles.extraLargeRobotoBold,
        headlineMedium: AppTextStyles.extraLargeRobotoSemiBold,
        headlineSmall: AppTextStyles.subHeadingSemiBoldRoboto,
        titleLarge: AppTextStyles.largeBoldRoboto,
        titleMedium: AppTextStyles.largeSemiBoldRoboto,
        titleSmall: AppTextStyles.largeRobotoNormal,
        bodyLarge: AppTextStyles.bodyLargeRobotoBold,
        bodyMedium: AppTextStyles.bodyLargeRobotoSemiBold,
        bodySmall: AppTextStyles.bodyTextInter,
        labelLarge: AppTextStyles.bodyTextRobotoSemiBold,
        labelMedium: AppTextStyles.bodySemiBoldRoboto,
        labelSmall: AppTextStyles.bodySmallRobotoNormal,
      ),
    );

    return baseTheme;
  }

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
        BlocProvider(
          create: (context) =>
              di.sl<UserBloc>(param1: initialUser)..add(const InitializeUser()),
        ),
        BlocProvider(create: (context) => di.sl<SpecialityBloc>()),
        BlocProvider(create: (context) => di.sl<HomeBloc>()),
        BlocProvider(create: (context) => di.sl<AddMemberBloc>()),
        BlocProvider(create: (context) => di.sl<BookAppointmentBloc>()),
        BlocProvider(create: (context) => di.sl<MemberSearchBloc>()),
        BlocProvider(create: (context) => di.sl<DeleteMemberBloc>()),
        BlocProvider(create: (context) => di.sl<MemberDetailBloc>()),
        BlocProvider(create: (context) => di.sl<NotificationBloc>()),
        BlocProvider(create: (context) => di.sl<MyAppointmentsBloc>()),
        BlocProvider(create: (context) => di.sl<ItemsBloc>()),
        BlocProvider(create: (context) => di.sl<ReportsBloc>()),
        BlocProvider(create: (context) => di.sl<ChangePasswordBloc>()),
        BlocProvider(create: (context) => di.sl<DocumentsBloc>()),
        BlocProvider(create: (context) => di.sl<AddDocumentBloc>()),
        BlocProvider<LoginWithPasswordBloc>(
          create: (context) => di.sl<LoginWithPasswordBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          FlutterNativeSplash.remove();
          return child!;
        },
        theme: _buildTheme(),
        routerConfig: _appRouter.config(
          deepLinkBuilder: (deepLink) => DeepLink(
            initialUser != null
                ? initialUser!.members.isNotEmpty
                      ? [const MemberSelectionRoute()]
                      : [const MainRoute()]
                : [const LoginRoute()],
          ),
        ),
      ),
    );
  }
}
