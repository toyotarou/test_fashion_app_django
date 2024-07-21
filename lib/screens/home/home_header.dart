import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/utils/kstrings.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(
          text: AppText.kCategories,
          style: appStyle(
            13,
            Kolors.kDark,
            FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push('/categories');
          },
          child: ReusableText(
            text: AppText.kViewAll,
            style: appStyle(
              13,
              Kolors.kGray,
              FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
