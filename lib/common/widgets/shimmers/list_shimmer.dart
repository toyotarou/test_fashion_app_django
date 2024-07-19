import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_fashion_app_django/common/widgets/shimmers/shimmer_widget.dart';

class ListShimmer extends StatelessWidget {
  const ListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, top: 10),
      height: ScreenUtil().screenHeight,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8, right: 6),
              child: ShimmerWidget(
                  shimmerWidth: ScreenUtil().screenWidth,
                  shimmerHieght: 70.h,
                  shimmerRadius: 12),
            );
          }),
    );
  }
}
