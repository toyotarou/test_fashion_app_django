import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';
import 'package:test_fashion_app_django/controller/product_controller.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({super.key, required this.text});

  final String text;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          textAlign: TextAlign.justify,
          maxLines: (!context.watch<ProductController>().description) ? 2 : 10,
          style: appStyle(13, Kolors.kGray, FontWeight.normal),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            InkWell(
              onTap: () {
                context.read<ProductController>().setDescription();
              },
              child: Text(
                context.watch<ProductController>().description.toString(),
                style: appStyle(11, Kolors.kPrimaryLight, FontWeight.normal),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
