import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/resources/common_widgets.dart/common_appbar.dart';
import 'package:patient_portal/feature/clinic_locations/presentation/pages/our_locations_screen_body.dart';

@RoutePage(name: 'ClinicLocationsRoute')
class ClinicLocationsScreen extends StatelessWidget {
  const ClinicLocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: context.lang.ourLocations),
      body: const OurLocationsScreenBody(),
    );
  }
}
