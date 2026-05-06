import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:s_mobills/core/core.dart';
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
    this.profilePhotoBytes,
    this.shape,
    super.key,
  });

  final String title;
  final bool isHomePage;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Size? customPreferredSize;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Uint8List? profilePhotoBytes;
  final ShapeBorder? shape;

  @override
  Size get preferredSize =>
      customPreferredSize ?? const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      shape: shape,
      centerTitle: !isHomePage,
      title: Padding(
        padding: EdgeInsets.only(left: isHomePage ? 20 : 0),
        child: isHomePage
            ? Row(
                children: [
                  _ProfileAvatar(photoBytes: profilePhotoBytes, name: title),
                  const SizedBox(width: 12),
                  Flexible(
                    child: Text(
                      'Olá $title',
                      style: SMobillsTextStyles.h5.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            : Text(
                title,
                style: SMobillsTextStyles.h5.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
      ),
      bottom: bottom,
      elevation: elevation ?? 0,
      surfaceTintColor: Colors.transparent,
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar({required this.name, this.photoBytes});

  final Uint8List? photoBytes;
  final String name;

  @override
  Widget build(BuildContext context) {
    final hasPhoto = photoBytes != null && photoBytes!.isNotEmpty;
    final initials = StringHelper.extractInitials(name.isNotEmpty ? name : ' ');

    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white.withValues(alpha: 0.4),
      backgroundImage: hasPhoto ? MemoryImage(photoBytes!) : null,
      child: hasPhoto
          ? null
          : Text(
              initials,
              style: SMobillsTextStyles.subtitle2.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
    );
  }
}
