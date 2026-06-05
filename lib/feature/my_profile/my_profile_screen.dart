import 'package:flutter/material.dart';
import 'package:innsof_patient_portal/feature/my_profile/widgets/member_section.dart';
import 'package:innsof_patient_portal/feature/my_profile/widgets/my_profile_app_bar.dart';
import 'package:innsof_patient_portal/feature/my_profile/widgets/my_profile_section.dart';
import 'package:innsof_patient_portal/feature/my_profile/widgets/quick_menus_section.dart';
import 'package:innsof_patient_portal/feature/profile_detail/widgets/profile_detail_app_bar.dart';
import 'package:innsof_patient_portal/resources/dimens.dart';

import '../../resources/app_colors.dart';
import '../members/widgets/member_tile.dart';
import '../profile/models/member/member_model.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyProfileAppBar(
       
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.constPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyProfileSection(),
              const Divider(
                thickness: 1,
                color: AppColors.dividerGrayColor,
              ),
              const QuickMenuSection(),
              Dimens.constHeight,
              const MemberSection(),
             
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 15),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: 3,
                itemBuilder: (context, index) => MemberTile(
                    member: MemberModel(
                        id: 1,
                        age: '23',
                        isInsurance: true,
                        isInsuranceExpired: false,
                        name: 'Aswathy$index',
                        emailId: '',
                        mobileNo: '',
                        profileImage: null)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
