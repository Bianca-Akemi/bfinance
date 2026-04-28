import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class SMobillsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SMobillsAppBar({
    required this.title,
    this.isHomePage = false,
    this.bottom,
    this.elevation,
    this.customPreferredSize,
    this.backgroundColor,
    this.foregroundColor,
    super.key,
  });

  final String title;
  final bool isHomePage;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Size? customPreferredSize;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Size get preferredSize =>
      customPreferredSize ?? const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      centerTitle: !isHomePage,
      title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          isHomePage ? 'Olá $title' : title,
          style: SMobillsTextStyles.h5.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      bottom: bottom,
      elevation: elevation ?? 0,
      surfaceTintColor: Colors.transparent,
    );
  }
}
