// ignore_for_file: always_put_required_named_parameters_first
import 'package:flutter/material.dart';
import 'package:s_mobills/ui/utils/s_mobills_styles.dart';

class SMobillsButton extends StatelessWidget {
  const SMobillsButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isLoading,
    this.textStyle,
    this.buttonStyle,
    this.width,
  });

  final String title;
  final VoidCallback onPressed;
  final bool? isLoading;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final loading = isLoading ?? false;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: width ?? 300,
      height: 52,
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: loading ? null : onPressed.call,
        child: Text(
          title,
          style:
              textStyle ??
              SMobillsTextStyles.button.copyWith(fontSize: FontSize.subtitle1),
        ),
      ),
    );
  }
}
