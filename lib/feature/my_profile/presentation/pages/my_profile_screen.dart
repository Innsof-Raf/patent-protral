import 'package:flutter/material.dart';
import 'package:patient_portal/feature/my_profile/presentation/widgets/member_section.dart';
import 'package:patient_portal/feature/my_profile/presentation/widgets/my_profile_app_bar.dart';
import 'package:patient_portal/feature/my_profile/presentation/widgets/my_profile_section.dart';
import 'package:patient_portal/feature/my_profile/presentation/widgets/quick_menus_section.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
import 'package:patient_portal/resources/app_colors.dart';
import 'package:patient_portal/resources/common_widgets.dart/member_tile.dart';
import 'package:patient_portal/resources/dimens.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyProfileAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.constPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyProfileSection(),
              const Divider(thickness: 1, color: AppColors.dividerGrayColor),
              const QuickMenuSection(),
              const SizedBox(height: Dimens.constPadding),
              const MemberSection(),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 15),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: 3,
                itemBuilder: (context, index) => MemberTile(
                  member: Member(
                    id: 1,
                    age: '23',
                    isInsurance: true,
                    isInsuranceExpired: false,
                    name: 'Aswathy$index',
                    emailId: '',
                    mobileNo: '',
                    nationalId: '123456789',
                    profileImage: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
