import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/controller/home_tab_controller.dart';
import 'package:test_fashion_app_django/screens/home/categories_list.dart';
import 'package:test_fashion_app_django/screens/home/custom_appbar.dart';
import 'package:test_fashion_app_django/screens/home/home_header.dart';
import 'package:test_fashion_app_django/screens/home/home_slider.dart';
import 'package:test_fashion_app_django/screens/home/home_tabs.dart';
import 'package:test_fashion_app_django/screens/products/explore_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> homeTabs = ['All', 'Popular', 'Unisex', 'Men', 'Women', 'Kids'];

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController tabController;

  int currentTabIndex = 0;

  ///
  @override
  void initState() {
    super.initState();

    tabController = TabController(length: homeTabs.length, vsync: this);
    tabController.addListener(handleSelection);
  }

  ///
  @override
  void dispose() {
    tabController
      ..removeListener(handleSelection)
      ..dispose();

    super.dispose();
  }

  ///
  void handleSelection() {
    final controller = Provider.of<HomeTabController>(context, listen: false);

    if (tabController.indexIsChanging) {
      setState(() {
        currentTabIndex = tabController.index;
      });

      controller.setIndex(homeTabs[currentTabIndex]);
    }
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        children: [
          SizedBox(height: 20.h),
          const HomeSlider(),
          SizedBox(height: 15.h),
          const HomeHeader(),
          const CategoriesList(),
          SizedBox(height: 15.h),
          HomeTabs(tabController: tabController),
          SizedBox(height: 15.h),
          const ExploreProduct(),
        ],
      ),
    );
  }
}
