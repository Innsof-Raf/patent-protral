import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/home/presentation/pages/home_screen.dart';
import 'package:patient_portal/feature/main_screen/presentation/helpers/main_screen_helpers.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/app_drawer.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/bottom_navigation_bar_widget.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/home_appbar.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/main_appbar.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/profile_app_bar.dart';
import 'package:patient_portal/feature/main_screen/presentation/widgets/reports_app_bar.dart';
import 'package:patient_portal/feature/my_appointments/my_appointment_screen.dart';
import 'package:patient_portal/feature/profile/bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/models/user/user_model.dart';
import 'package:patient_portal/feature/profile/profile_screen.dart';
import 'package:patient_portal/feature/reports/reports_screen.dart';
import 'package:patient_portal/feature/speciality/speciality_screen.dart';

List<Widget> screens = const [
  HomeScreen(),
  MyAppointmentScreen(),
  SpecilityScreen(),
  ReportsScreen(),
  ProfileScreen(),
];
List<PreferredSizeWidget?> appBars = const [
  HomeAppBar(),
  MainAppBar(title: 'My Appointments'),
  MainAppBar(title: 'Specialist'),
  ReportsAppBar(),
  ProfileAppBar(),
];

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final UserModel user = context.read<UserBloc>().state.user!;
      context.read<HomeBloc>().add(
        GetHomeData(token: user.accessToken, idBusunit: 3),
      );
    });
    MainScreenHelpers.mainScreenNotifier.value = 0;
    return ValueListenableBuilder(
      valueListenable: MainScreenHelpers.mainScreenNotifier,
      builder: (context, value, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        drawer: const AppDrawer(),
        appBar: appBars[value],
        body: PopScope(
          canPop: value == 0,
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;
            MainScreenHelpers.mainScreenNotifier.value = 0;
          },
          child: screens[value],
        ),
        floatingActionButton: const BottomNavigationBarWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
