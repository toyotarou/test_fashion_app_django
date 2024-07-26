import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController userNameEditingController =
      TextEditingController();

  late final TextEditingController passwordEditingController =
      TextEditingController();

  final FocusNode passwordNode = FocusNode();

  ///
  @override
  void dispose() {
    userNameEditingController.dispose();
    passwordEditingController.dispose();

    passwordNode.dispose();

    super.dispose();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('LoginScreen'),
          ],
        ),
      ),
    );
  }
}
