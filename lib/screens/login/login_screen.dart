import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/back_button.dart';
import 'package:test_fashion_app_django/common/widgets/custom_button.dart';
import 'package:test_fashion_app_django/common/widgets/email_textfield.dart';
import 'package:test_fashion_app_django/common/widgets/password_field.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: AppBackButton(
          onTap: () {
            context.go('/home');
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 160.h),
          Text(
            'Fashion App',
            textAlign: TextAlign.center,
            style: appStyle(24, Kolors.kPrimary, FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Text(
            'Login',
            textAlign: TextAlign.center,
            style: appStyle(13, Kolors.kGray, FontWeight.normal),
          ),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                EmailTextField(
                  radius: 25,
                  keyboardType: TextInputType.emailAddress,
                  focusNode: passwordNode,
                  hintText: 'username',
                  controller: userNameEditingController,
                  prefixIcon: const Icon(
                    CupertinoIcons.mail,
                    size: 20,
                    color: Kolors.kGray,
                  ),
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(passwordNode);
                  },
                ),
                SizedBox(height: 25.h),
                PasswordField(
                  controller: passwordEditingController,
                  focusNode: passwordNode,
                  radius: 25,
                ),
                SizedBox(height: 25.h),
                CustomButton(
                  onTap: () {},
                  text: 'Login',
                  btnWidth: ScreenUtil().screenWidth,
                  btnHieght: 35,
                  radius: 25,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 130.h,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 110),
            child: GestureDetector(
              onTap: () {
                context.push('/register');
              },
              child: Text(
                'No have Account, Regist!!',
                style: appStyle(12, Colors.blueAccent, FontWeight.normal),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
