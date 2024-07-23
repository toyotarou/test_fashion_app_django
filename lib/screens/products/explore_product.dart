import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:test_fashion_app_django/common/services/storage.dart';
import 'package:test_fashion_app_django/common/widgets/login_bottom_sheet.dart';
import 'package:test_fashion_app_django/const/constants.dart';
import 'package:test_fashion_app_django/screens/products/product_list.dart';

class ExploreProduct extends StatefulWidget {
  const ExploreProduct({super.key});

  @override
  State<ExploreProduct> createState() => _ExploreProductState();
}

class _ExploreProductState extends State<ExploreProduct> {
  ///
  @override
  Widget build(BuildContext context) {
    final accessToken = Storage().getString('accessToken');
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: StaggeredGrid.count(
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        crossAxisCount: 4,
        children: List.generate(
          products.length,
          (index) {
            // ignore: use_is_even_rather_than_modulo
            final mainAxisCellCount = (index % 2 == 0 ? 2.17 : 2.4);

            final product = products[index];

            return StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: mainAxisCellCount,
              child: ProductList(
                onTap: () {
                  if (accessToken == null) {
                    loginBottomSheet(context);
                  } else {
                    print(accessToken);
                  }
                },
                product: product,
                i: index,
              ),
            );
          },
        ),
      ),
    );
  }
}
