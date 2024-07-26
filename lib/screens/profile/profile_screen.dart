import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/custom_button.dart';
import 'package:test_fashion_app_django/common/widgets/help_bottom_sheet.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';
import 'package:test_fashion_app_django/screens/profile/profile_tile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 30.h),
                const CircleAvatar(
                  radius: 35,
                  backgroundColor: Kolors.kOffWhite,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/5672006?v=4'),
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                    color: Kolors.kRed,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ReusableText(
                    text: 'Hidechy',
                    style: appStyle(
                      14,
                      Kolors.kWhite,
                      FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            DecoratedBox(
              decoration: const BoxDecoration(
                color: Kolors.kOffWhite,
              ),
              child: Column(
                children: [
                  ProfileTileWidget(
                    tilte: 'My Orders',
                    leading: Octicons.checklist,
                    onTap: () {
                      context.push('/orders');
                    },
                  ),
                  ProfileTileWidget(
                    tilte: 'Shipping Address',
                    leading: MaterialIcons.location_pin,
                    onTap: () {
                      context.push('/addresses');
                    },
                  ),
                  ProfileTileWidget(
                    tilte: 'Privacy Policy',
                    leading: MaterialIcons.policy,
                    onTap: () {
                      context.push('/policy');
                    },
                  ),
                  ProfileTileWidget(
                    tilte: 'Help Center',
                    leading: AntDesign.customerservice,
                    onTap: () => showHelpCenterBottomSheet(context),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: CustomButton(
                text: 'Log out'.toUpperCase(),
                btnColor: Kolors.kRed,
                btnWidth: ScreenUtil().screenWidth - 100,
                btnHieght: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
