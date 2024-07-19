import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3),
            child: ReusableText(
              text: 'Location',
              style: appStyle(
                12,
                Kolors.kGray,
                FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Icon(
                Ionicons.location,
                size: 16,
                color: Kolors.kPrimary,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: SizedBox(
                  width: ScreenUtil().screenWidth * 0.7,
                  child: Text(
                    'Select Location',
                    maxLines: 1,
                    style: appStyle(
                      14,
                      Kolors.kDark,
                      FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [],
    );
  }
}
