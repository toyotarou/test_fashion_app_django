// ignore_for_file: always_declare_return_types

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_fashion_app_django/common/services/storage.dart';
import 'package:test_fashion_app_django/const/resource.dart';
import 'package:test_fashion_app_django/extensions/extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ///
  @override
  void initState() {
    _navigator();

    super.initState();
  }

  ///
  _navigator() async => await Future.delayed(
      const Duration(milliseconds: 3000),
      () {
        if (Storage().getBool('firstOpen') == null) {
          GoRouter.of(context).go('/onboarding');
        } else {
          GoRouter.of(context).go('/home');
        }
      },
    );

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: context.screenSize.width,
        height: context.screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              R.ASSETS_IMAGES_SPLASHSCREEN_PNG,
            ),
          ),
        ),
      ),
    );
  }
}
