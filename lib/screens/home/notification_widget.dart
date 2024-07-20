import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:test_fashion_app_django/common/services/storage.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/login_bottom_sheet.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (Storage().getString('accessToken') == null) {




          loginBottomSheet(context);


        } else {
          context.go('/notifications');
        }
      },
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: CircleAvatar(
          backgroundColor: Kolors.kGrayLight.withOpacity(0.3),
          child: const Badge(
            label: Text('7'),
            child: Icon(
              Ionicons.notifications,
              color: Kolors.kPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
