import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, this.isShowLogo = true});
  final bool isShowLogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.mediaQuery.size.height,
      width: context.mediaQuery.size.width,
      color: context.colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isShowLogo
              ? Image.asset('lib/resources/icons/logo.png', width: 400)
              : Padding(
                  padding: const EdgeInsets.only(top: 80, left: 30),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
