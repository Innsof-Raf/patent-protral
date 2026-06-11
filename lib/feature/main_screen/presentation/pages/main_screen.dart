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
import 'package:patient_portal/feature/my_appointments/presentation/pages/my_appointment_screen.dart';
import 'package:patient_portal/feature/profile/domain/entities/user.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/profile/presentation/pages/profile_screen.dart';
import 'package:patient_portal/feature/reports/presentation/pages/reports_screen.dart';
import 'package:patient_portal/feature/speciality/presentation/pages/speciality_screen.dart';

List<Widget> screens = const [
  HomeScreen(),
  MyAppointmentScreen(),
  SpecialityScreen(),
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

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    final User user = context.read<UserBloc>().state.user!;
    context.read<HomeBloc>().add(
      GetHomeData(token: user.accessToken, idBusunit: 3),
    );
    MainScreenHelpers.mainScreenNotifier.value = 0;
  }

  @override
  Widget build(BuildContext context) {
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
