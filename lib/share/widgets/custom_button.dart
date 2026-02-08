import 'package:flutter/material.dart';

/// A custom button widget that supports icons, text, and flexible layouts.
///
/// [text] is the label of the button.
/// [icon] is the icon displayed before the text.
/// [onTap] is the callback when the button is pressed.
/// [color] is the background color.
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.icon,
    this.onTap,
    this.height,
    this.width,
    this.borderRadius,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  });

  final String text;
  final Color color;
  final Icon icon;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    // Standardizing the border radius
    final effectiveBorderRadius = borderRadius ?? BorderRadius.circular(8);

    return Material(
      color: Colors.transparent, // Required for Ink effect
      child: InkWell(
        onTap: onTap,
        borderRadius: effectiveBorderRadius,
        child: Ink(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            color: color,
            borderRadius: effectiveBorderRadius,
          ),
          child: _buildLayout(),
        ),
      ),
    );
  }

  /// Decides whether to use Row or Column based on height to remain responsive.
  Widget _buildLayout() {
    final bool isLarge = height != null && height! > 100;

    if (isLarge) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 12),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(width: 8),
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
