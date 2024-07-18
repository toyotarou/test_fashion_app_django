import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/utils/kstrings.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/const/resource.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Stack(
        children: [
          Image.asset(
            R.ASSETS_IMAGES_EXPERIENCE_PNG,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 150,
            left: 30,
            right: 30,
            child: Text(
              AppText.kOnboardHome,
              textAlign: TextAlign.center,
              style: appStyle(11, Kolors.kGray, FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
