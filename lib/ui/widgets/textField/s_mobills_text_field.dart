import 'package:flutter/material.dart';
import 'package:s_mobills/ui/utils/s_mobills_styles.dart';

class SMobillsTextField extends StatefulWidget {
  const SMobillsTextField({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.obscureText,
    this.readOnly,
    this.title,
  });

  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool? readOnly;
  final String? title;

  @override
  State<SMobillsTextField> createState() => _SMobillsTextFieldState();
}

class _SMobillsTextFieldState extends State<SMobillsTextField> {
  late bool _obscured;

  bool get _isPassword => widget.obscureText ?? false;

  @override
  void initState() {
    super.initState();
    _obscured = _isPassword;
  }

  void _toggleVisibility() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              widget.title ?? '',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
            ),
          ),
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: SMobillsTextStyles.body1.copyWith(
                color: Colors.grey.shade500,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.colorScheme.primary,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: context.colorScheme.surface,
              suffixIcon: _isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscured ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey.shade500,
                      ),
                      onPressed: _toggleVisibility,
                    )
                  : null,
            ),
            cursorColor: Theme.of(context).colorScheme.primary,
            keyboardType: widget.keyboardType,
            obscureText: _obscured,
            style: SMobillsTextStyles.body1,
            readOnly: widget.readOnly ?? false,
            onTapOutside: (event) {
              final currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus &&
                  currentFocus.focusedChild != null) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
          ),
        ],
      ),
    );
  }
}
