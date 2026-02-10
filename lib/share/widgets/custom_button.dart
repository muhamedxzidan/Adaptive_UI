import 'package:flutter/material.dart';

/// A simple custom button with icon and text.
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    this.icon,
    this.onTap,
    this.borderRadius,
    this.height,
    this.width,
    this.style,
    this.border,
  });

  final String text;
  final Color color;
  final Icon? icon;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final TextStyle? style;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? const SizedBox(),
            const SizedBox(width: 8),
            Text(
              text,
              style:
                  style ??
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
