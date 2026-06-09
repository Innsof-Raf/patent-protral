import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:patient_portal/feature/member_details/presentation/widgets/member_text_filed.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/resources/common_widgets.dart/rounded_cheack_box.dart';

class MemberInsuranceSection extends StatelessWidget {
  final String insuranceName;
  final String memberNo;
  final DateTime? expireDate;

  const MemberInsuranceSection({
    super.key,
    required this.insuranceName,
    required this.memberNo,
    this.expireDate,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 27),
            RoundedCheackBoxTile(
              isSelected: true,
              onChanged: () {},
              title: 'I have insurance',
            ),
            const SizedBox(height: 22),
            MemberTextFiled(title: 'Insuance', value: insuranceName),
            const SizedBox(height: 8),
            MemberTextFiled(title: 'Member ID', value: memberNo),
            const SizedBox(height: 8),
            MemberTextFiled(
              title: 'Expire date',
              value: expireDate != null
                  ? DateFormat('dd-MM-yyyy').format(expireDate!)
                  : '',
            ),
            const SizedBox(height: 21),
          ],
        );
      },
    );
  }
}
