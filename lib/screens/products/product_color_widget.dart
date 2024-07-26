import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/controller/colors_sizes_controller.dart';
import 'package:test_fashion_app_django/controller/product_controller.dart';

class ProductColorWidget extends StatefulWidget {
  const ProductColorWidget({super.key});

  @override
  State<ProductColorWidget> createState() => _ProductColorWidgetState();
}

class _ProductColorWidgetState extends State<ProductColorWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ColorsSizesController>(
      builder: (context, colorSizesController, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            context.read<ProductController>().product!.colors.length,
            (index) {
              final c =
                  context.read<ProductController>().product!.colors[index];

              return GestureDetector(
                onTap: () {
                  colorSizesController.setSizes(c);
                },
                child: Container(
                  height: 30.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                    color: colorSizesController.sizes == c
                        ? Kolors.kPrimary
                        : Kolors.kGrayLight,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      c,
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
