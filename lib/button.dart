import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    this.child = const Text("BUTTON"),
    this.borderRadius = 8.0,
  });

  final VoidCallback? onPressed;
  final Widget? child;
  final double borderRadius;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
      ),
    );

    return ElevatedButton(
      onPressed: widget.onPressed,
      style: style,
      child: widget.child,
    );
  }
}
