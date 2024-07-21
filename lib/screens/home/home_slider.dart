import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/utils/kstrings.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/custom_button.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';
import 'package:test_fashion_app_django/const/constants.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadiusAll,
      child: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: ImageSlideshow(
              indicatorColor: Kolors.kPrimaryLight,
              onPageChanged: (value) {},
              autoPlayInterval: 5000,
              isLoop: true,
              children: List.generate(
                images.length,
                (index) {
                  return CachedNetworkImage(
                    placeholder: placeholder,
                    errorWidget: errorWidget,
                    imageUrl: images[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: ScreenUtil().screenHeight * 0.16,
              width: ScreenUtil().screenWidth,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: AppText.kCollection,
                      style: appStyle(20, Kolors.kGold, FontWeight.w600),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      'Discount',
                      style: appStyle(14, Kolors.kWhite, FontWeight.normal),
                    ),
                    SizedBox(height: 10.h),
                    CustomButton(
                      text: 'Shop Now',
                      btnWidth: 100.w,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
