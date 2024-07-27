import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/back_button.dart';
import 'package:test_fashion_app_django/common/widgets/custom_button.dart';
import 'package:test_fashion_app_django/common/widgets/email_textfield.dart';
import 'package:test_fashion_app_django/common/widgets/password_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late final TextEditingController emailEditingController =
      TextEditingController();

  late final TextEditingController passwordEditingController =
      TextEditingController();

  late final TextEditingController userNameEditingController =
      TextEditingController();

  final FocusNode passwordNode = FocusNode();

  ///
  @override
  void dispose() {
    emailEditingController.dispose();
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
        leading: const AppBackButton(),
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
                  hintText: 'email',
                  controller: emailEditingController,
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
                EmailTextField(
                  radius: 25,
                  keyboardType: TextInputType.name,
                  focusNode: passwordNode,
                  hintText: 'username',
                  controller: userNameEditingController,
                  prefixIcon: const Icon(
                    CupertinoIcons.profile_circled,
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
                  text: 'Regist',
                  btnWidth: ScreenUtil().screenWidth,
                  btnHieght: 35,
                  radius: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
