import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_fashion_app_django/common/services/storage.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/utils/kstrings.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/custom_button.dart';
import 'package:test_fashion_app_django/const/resource.dart';

class LastPage extends StatefulWidget {
  const LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        color: Kolors.kWhite,
        child: Column(
          children: [
            SizedBox(height: 100.h),
            Image.asset(R.ASSETS_IMAGES_GETSTARTED_PNG),
            SizedBox(height: 30.h),
            Text(
              AppText.kWelcomeHeader,
              textAlign: TextAlign.center,
              style: appStyle(
                24,
                Kolors.kPrimary,
                FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: ScreenUtil().screenWidth - 100,
              child: Text(
                AppText.kWelcomeMessage,
                textAlign: TextAlign.center,
                style: appStyle(
                  12,
                  Kolors.kGray,
                  FontWeight.normal,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            GradientBtn(
              text: 'start',
              onTap: () {
                Storage().setBool('firstOpen', true);

                context.go('/home');
              },
              btnHieght: 35,
              radius: 20,
              btnWidth: ScreenUtil().screenWidth - 100,
            ),
          ],
        ),
      ),
    );
  }
}
