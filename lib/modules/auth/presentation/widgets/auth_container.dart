import 'package:flutter/material.dart';
import 'package:s_mobills/ui/ui.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: context.mediaQuery.size.height * 0.15,
        horizontal: context.mediaQuery.size.width * 0.06,
      ),
      padding: const EdgeInsets.only(top: 24),
      height: context.mediaQuery.size.height * 0.70,
      width: context.mediaQuery.size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(28),
        ),
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
