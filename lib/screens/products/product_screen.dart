// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/common/services/storage.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/common/widgets/back_button.dart';
import 'package:test_fashion_app_django/common/widgets/error_modal.dart';
import 'package:test_fashion_app_django/common/widgets/login_bottom_sheet.dart';
import 'package:test_fashion_app_django/common/widgets/reusable_text.dart';
import 'package:test_fashion_app_django/const/constants.dart';
import 'package:test_fashion_app_django/controller/colors_sizes_controller.dart';
import 'package:test_fashion_app_django/controller/product_controller.dart';
import 'package:test_fashion_app_django/screens/products/expandable_text.dart';
import 'package:test_fashion_app_django/screens/products/product_bottom_bar.dart';
import 'package:test_fashion_app_django/screens/products/product_color_widget.dart';
import 'package:test_fashion_app_django/screens/products/product_size_widget.dart';
import 'package:test_fashion_app_django/screens/products/similar_products.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.productId});

  final String productId;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ///
  @override
  Widget build(BuildContext context) {
    final accessToken = Storage().getString('accessToken');

    return Consumer<ProductController>(
        builder: (context, productController, child) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 320.h,
              collapsedHeight: 65.h,
              pinned: true,
              leading: const AppBackButton(),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Kolors.kSecondaryLight,
                      child: Icon(
                        AntDesign.heart,
                        color: Kolors.kRed,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                background: SizedBox(
                  height: 415.h,
                  child: ImageSlideshow(
                    indicatorColor: Kolors.kPrimaryLight,
                    autoPlayInterval: 15000,
                    isLoop: productController.product!.imageUrls.length > 1
                        ? true
                        : false,
                    children: List.generate(
                      productController.product!.imageUrls.length,
                      (index) {
                        return CachedNetworkImage(
                          placeholder: placeholder,
                          errorWidget: errorWidget,
                          height: 415.h,
                          imageUrl: productController.product!.imageUrls[index],
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableText(
                      text:
                          productController.product!.clothesType.toUpperCase(),
                      style: appStyle(13, Kolors.kGray, FontWeight.w600),
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
                          text: productController.product!.ratings
                              .toStringAsFixed(1),
                          style: appStyle(13, Kolors.kGray, FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ReusableText(
                  text: productController.product!.title,
                  style: appStyle(16, Kolors.kDark, FontWeight.w600),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.h),
                child: ExpandableText(
                    text: productController.product!.description),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Divider(
                  thickness: 0.5.h,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ReusableText(
                  text: 'Select Size:',
                  style: appStyle(16, Kolors.kDark, FontWeight.w600),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ProductSizeWidget(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ReusableText(
                  text: 'Select Color:',
                  style: appStyle(16, Kolors.kDark, FontWeight.w600),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ProductColorWidget(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ReusableText(
                  text: 'Similar Products:',
                  style: appStyle(16, Kolors.kDark, FontWeight.w600),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SimilarProducts(),
            ),
          ],
        ),
        bottomNavigationBar: ProductBottomBar(
          onPressed: () {
            if (accessToken == null) {
              loginBottomSheet(context);
            } else {
              if (context.read<ColorsSizesController>().colors == '' ||
                  context.read<ColorsSizesController>().sizes == '') {
                showErrorPopup(
                  context,
                  'Please select color or size',
                  'Error Adding to Cart',
                  true,
                );
              } else {
                print('Add to cart');
              }
            }
          },
          price: productController.product!.price.toString(),
        ),
      );
    });
  }
}
