import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/medical_insurances/presentation/widgets/medical_insurance_widget.dart';
import 'package:patient_portal/resources/common_widgets.dart/common_appbar.dart';

class MedicalInsurancesScreen extends StatelessWidget {
  const MedicalInsurancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppbar(title: 'Medical Insurances'),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) => GridView.builder(
          padding: const EdgeInsets.all(15),
          shrinkWrap: true,
          itemCount: state.homeData.topInsurances.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: ((context, index) => MedicalInsuranceWidget(
            idInsurance: state.homeData.topInsurances[index].idInsurance,
            image: state.homeData.topInsurances[index].img!,
          )),
        ),
      ),
    );
  }
}
