import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';
import 'package:test_fashion_app_django/screens/home/notification_widget.dart';

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
              const Icon(
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
      actions: const [NotificationWidget()],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(55.h),
        child: GestureDetector(
          onTap: () {
            context.push('/search');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
            child: Row(
              children: [
                Container(
                  height: 40.h,
                  width: ScreenUtil().screenWidth - 80,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Kolors.kGrayLight),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        const Icon(
                          Ionicons.search,
                          size: 20,
                          color: Kolors.kPrimaryLight,
                        ),
                        SizedBox(width: 20.w),
                        ReusableText(
                          text: 'search',
                          style: appStyle(
                            14,
                            Kolors.kGray,
                            FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Kolors.kPrimary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    FontAwesome.sliders,
                    color: Kolors.kWhite,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
