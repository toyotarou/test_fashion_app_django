import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:test_fashion_app_django/common/utils/kcolors.dart';
import 'package:test_fashion_app_django/common/widgets/app_style.dart';

class ProfileTileWidget extends StatefulWidget {
  const ProfileTileWidget(
      {super.key, required this.tilte, this.onTap, required this.leading});

  final String tilte;
  final void Function()? onTap;
  final IconData leading;

  @override
  State<ProfileTileWidget> createState() => _ProfileTileWidgetState();
}

class _ProfileTileWidgetState extends State<ProfileTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.compact,
      onTap: widget.onTap,
      leading: Icon(
        widget.leading,
        color: Kolors.kGray,
      ),
      title: Text(
        widget.tilte,
        style: appStyle(13, Kolors.kDark, FontWeight.normal),
      ),
      trailing: const Icon(AntDesign.right, size: 16, color: Kolors.kDark),
    );
  }
}
