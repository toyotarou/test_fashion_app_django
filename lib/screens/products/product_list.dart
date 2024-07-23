import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';
import 'package:test_fashion_app_django/models/product_model.dart';

class ProductList extends StatefulWidget {
  const ProductList({
    super.key,
    required this.i,
    required this.product,
    required this.onTap,
  });

  final int i;
  final Product product;
  final void Function()? onTap;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
//    final accessToken = Storage().getString('accessToken');

    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        // ignore: use_colored_box
        child: Container(
          color: Kolors.kOffWhite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // ignore: use_is_even_rather_than_modulo
                height: widget.i % 2 == 0 ? 140.h : 160.h,
                color: Kolors.kPrimary,
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      // ignore: use_is_even_rather_than_modulo
                      height: widget.i % 2 == 0 ? 163.h : 180.h,
                      fit: BoxFit.cover,
                      imageUrl: widget.product.imageUrls[0],
                    ),
                    Positioned(
                      right: 10.h,
                      top: 10.h,
                      child: const CircleAvatar(
                        backgroundColor: Kolors.kSecondaryLight,
                        child: Icon(
                          AntDesign.heart,
                          color: Kolors.kRed,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        widget.product.title,
                        overflow: TextOverflow.ellipsis,
                        style: appStyle(13, Kolors.kDark, FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          AntDesign.star,
                          color: Kolors.kGold,
                          size: 14,
                        ),
                        SizedBox(width: 5.w),
                        ReusableText(
                          text: widget.product.ratings.toStringAsFixed(1),
                          style: appStyle(13, Kolors.kGray, FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: ReusableText(
                  text: '\$ ${widget.product.price.toStringAsFixed(2)}',
                  style: appStyle(17, Kolors.kDark, FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
