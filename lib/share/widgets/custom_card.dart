import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.style,
    this.height,
    this.width,
  });
  final String title;
  final String description;
  final Icon icon;
  final TextStyle? style;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        spacing: 10,
        children: [
          icon,
          Text(title, style: style),
          Text(description),
        ],
      ),
    );
  }
}
