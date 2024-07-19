import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/controller/on_boarding_controller.dart';
import 'package:test_fashion_app_django/screens/on_boarding/page/last_page.dart';
import 'package:test_fashion_app_django/screens/on_boarding/page/page1.dart';
import 'package:test_fashion_app_django/screens/on_boarding/page/page2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController pageController;

  ///
  @override
  void initState() {
    pageController = PageController(
      initialPage: context.read<OnBoardingController>().selectedIndex,
    );

    super.initState();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) {
              context.read<OnBoardingController>().setSelectedIndex = value;
            },
            children: const [
              Page1(),
              Page2(),
              LastPage(),
            ],
          ),
          Positioned(
            bottom: 50.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              width: ScreenUtil().screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    AntDesign.leftcircleo,
                    color: Kolors.kPrimary,
                    size: 30,
                  ),
                  SizedBox(
                    width: ScreenUtil().screenWidth * 0.7,
                    height: 50.h,
                    child: PageViewDotIndicator(
                      currentItem:
                          context.watch<OnBoardingController>().selectedIndex,
                      count: 3,
                      unselectedColor: Colors.black26,
                      selectedColor: Kolors.kPrimary,
                      duration: const Duration(milliseconds: 200),
                    ),
                  ),
                  const Icon(
                    AntDesign.rightcircleo,
                    color: Kolors.kPrimary,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
