import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patient_portal/core/localization/localization_extension.dart';
import 'package:patient_portal/core/route/app_router.dart';
import 'package:patient_portal/feature/speciality/domain/entities/speciality.dart';

class SpecialityBaseTile extends StatelessWidget {
  const SpecialityBaseTile({
    super.key,
    required this.speciality,
    required this.child,
  });

  final Speciality speciality;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: '${context.lang.viewDoctorsIn} ${speciality.specialityName}',
      child: InkWell(
        onTap: () =>
            context.router.root.push(DoctorsRoute(speciality: speciality)),
        child: child,
      ),
    );
  }
}
