import 'package:flutter/material.dart';
import 'package:test_fashion_app_django/screens/home/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppbar(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'HomeScreen',
              style: TextStyle(color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}
