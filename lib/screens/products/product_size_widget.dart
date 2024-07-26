import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/controller/colors_sizes_controller.dart';
import 'package:test_fashion_app_django/controller/product_controller.dart';

class ProductSizeWidget extends StatefulWidget {
  const ProductSizeWidget({super.key});

  @override
  State<ProductSizeWidget> createState() => _ProductSizeWidgetState();
}

class _ProductSizeWidgetState extends State<ProductSizeWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ColorsSizesController>(
      builder: (context, colorSizesController, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            context.read<ProductController>().product!.sizes.length,
            (index) {
              final s =
                  context.read<ProductController>().product!.sizes[index];

              return GestureDetector(
                onTap: () {
                  colorSizesController.setSizes(s);
                },
                child: Container(
                  height: 30.h,
                  width: 45.h,
                  decoration: BoxDecoration(
                    color: colorSizesController.sizes == s
                        ? Kolors.kPrimary
                        : Kolors.kGrayLight,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      s,
                      style: appStyle(20, Kolors.kWhite, FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
