import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/common/utils/app_routes.dart';
import 'package:test_fashion_app_django/common/utils/environment.dart';
import 'package:test_fashion_app_django/controller/bottom_navigation_controller.dart';
import 'package:test_fashion_app_django/controller/category_controller.dart';
import 'package:test_fashion_app_django/controller/on_boarding_controller.dart';
import 'package:test_fashion_app_django/extensions/extensions.dart';
import 'package:test_fashion_app_django/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: Environment.fileName);

  await GetStorage.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OnBoardingController()),
        ChangeNotifierProvider(create: (_) => BottomNavigationController()),
        ChangeNotifierProvider(create: (_) => CategoryController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: context.screenSize,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
      child: const SplashScreen(),
    );
  }
}
