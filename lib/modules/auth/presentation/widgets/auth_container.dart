import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    required this.height,
    required this.marginTop,
    required this.borderRadius,
    required this.child,
    super.key,
  });
  final double height;
  final double marginTop;
  final BorderRadius borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.mediaQuery.size.height * marginTop),
      padding: const EdgeInsets.only(top: 40),
      height: context.mediaQuery.size.height * height,
      width: context.mediaQuery.size.width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: context.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: child,
    );
  }
}
