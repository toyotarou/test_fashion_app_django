import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/utils/kstrings.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/back_button.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';

class PolicyScreen extends StatefulWidget {
  const PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: ReusableText(
          text: AppText.kPolicy,
          style: appStyle(16, Kolors.kPrimary, FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView(
          children: [
            SizedBox(height: 12.h),
            ReusableText(
              text: AppText.kCancelation,
              style: appStyle(15, Kolors.kPrimary, FontWeight.w500),
            ),
            SizedBox(height: 12.h),
            Text(
              AppText.kAppCancelationPolicy,
              textAlign: TextAlign.justify,
              style: appStyle(13, Kolors.kGray, FontWeight.normal),
            ),
            SizedBox(height: 12.h),
            ReusableText(
              text: AppText.kTerms,
              style: appStyle(15, Kolors.kPrimary, FontWeight.w500),
            ),
            SizedBox(height: 12.h),
            Text(
              AppText.kAppTerms,
              textAlign: TextAlign.justify,
              style: appStyle(13, Kolors.kGray, FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
