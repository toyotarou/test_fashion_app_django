import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/tab_widget.dart';
import 'package:test_fashion_app_django/screens/home/home_screen.dart';

class HomeTabs extends StatefulWidget {
  const HomeTabs({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  State<HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  ///
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22.h,
      child: TabBar(
        controller: widget._tabController,
        indicator: BoxDecoration(
          color: Kolors.kPrimary,
          borderRadius: BorderRadius.circular(25),
        ),
        labelPadding: EdgeInsets.zero,
        labelColor: Kolors.kWhite,
        dividerColor: Colors.transparent,
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        labelStyle: appStyle(11, Kolors.kPrimary, FontWeight.w600),
        unselectedLabelStyle: appStyle(11, Kolors.kGray, FontWeight.normal),
        tabs: List.generate(
          homeTabs.length,
          (index) => Tab(child: TabWidget(text: homeTabs[index])),
        ),
      ),
    );
  }
}
