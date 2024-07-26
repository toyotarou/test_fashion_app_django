import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';

class ProductBottomBar extends StatefulWidget {
  const ProductBottomBar({
    super.key,
    required this.price,
    this.onPressed,
  });

  final String price;
  final void Function()? onPressed;

  ///
  @override
  State<ProductBottomBar> createState() => _ProductBottomBarState();
}

class _ProductBottomBarState extends State<ProductBottomBar> {
  ///
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      color: Colors.white.withOpacity(0.6),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 20, 12.w, 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60.h,
              width: 120.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    text: 'Total Price:',
                    style: appStyle(14, Kolors.kGray, FontWeight.normal),
                  ),
                  ReusableText(
                    text: '\$ ${widget.price}',
                    style: appStyle(14, Kolors.kDark, FontWeight.w600),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Kolors.kPrimary),
              ),
              onPressed: widget.onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FontAwesome.shopping_bag,
                    color: Kolors.kWhite,
                  ),
                  const SizedBox(width: 20),
                  ReusableText(
                    text: 'Checkout',
                    style: appStyle(14, Kolors.kWhite, FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
