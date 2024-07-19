import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/controller/bottom_navigation_controller.dart';
import 'package:test_fashion_app_django/screens/cart/cart_screen.dart';
import 'package:test_fashion_app_django/screens/home/home_screen.dart';
import 'package:test_fashion_app_django/screens/profile/profile_screen.dart';
import 'package:test_fashion_app_django/screens/wishlist/wishlist_screen.dart';

class AppEntryPoint extends StatefulWidget {
  const AppEntryPoint({super.key});

  @override
  State<AppEntryPoint> createState() => _AppEntryPointState();
}

class _AppEntryPointState extends State<AppEntryPoint> {
  List<Widget> pageList = [
    const HomeScreen(),
    const WishlistScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pageList[context.watch<BottomNavigationController>().index],
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Kolors.kOffWhite),
              child: BottomNavigationBar(
                selectedFontSize: 12,
                elevation: 0,
                backgroundColor: Kolors.kOffWhite,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                selectedItemColor: Kolors.kPrimary,
                unselectedItemColor: Kolors.kGray,
                unselectedIconTheme: const IconThemeData(color: Colors.black38),
                onTap: (i) {
                  context.read<BottomNavigationController>().setIndex(i);
                },
                currentIndex: context.watch<BottomNavigationController>().index,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        AntDesign.home,
                        color: Kolors.kPrimary,
                        size: 24,
                      ),
                      label: 'home'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Ionicons.heart_outline,
                        color: Kolors.kPrimary,
                        size: 24,
                      ),
                      label: 'wishlist'),
                  BottomNavigationBarItem(
                      icon: Badge(
                        label: Text('9'),
                        child: Icon(
                          MaterialCommunityIcons.shopping_outline,
                          color: Kolors.kPrimary,
                          size: 24,
                        ),
                      ),
                      label: 'cart'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        EvilIcons.user,
                        color: Kolors.kPrimary,
                        size: 24,
                      ),
                      label: 'profile'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
