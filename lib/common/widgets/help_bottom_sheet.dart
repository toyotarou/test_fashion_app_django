import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';

Future<dynamic> showHelpCenterBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fashion App Help Center',
                  style: appStyle(
                    18,
                    Kolors.kPrimary,
                    FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),

                // Information Section
                Text(
                  'We\'re here to help! Find answers to frequently asked questions or contact our support team.',
                  textAlign: TextAlign.center,
                  style: appStyle(16, Kolors.kDark, FontWeight.normal),
                ),
                SizedBox(height: 15.h),

                // FAQ Section (Replace with actual FAQs)
                const Text(
                  'FAQs:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Can I return an item?'),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Kolors.kGray,
                  ),
                  onTap: () {
                    // Handle FAQ tap (open details page or show answer)
                  },
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('How do I track my order?'),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Kolors.kGray,
                  ),
                  onTap: () {
                    // Handle FAQ tap (open details page or show answer)
                  },
                ),

                const SizedBox(height: 15),

                // Contact Section
                const Text(
                  'Contact Us:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                const Row(
                  children: [
                    Icon(MaterialCommunityIcons.email_outline),
                    SizedBox(width: 10),
                    Text(
                      'support@fashionapp.com',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                const Row(
                  children: [
                    Icon(MaterialCommunityIcons.phone_outline),
                    SizedBox(width: 10),
                    Text(
                      '+860000000000',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Visit Full Help Center'),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
