import 'package:flutter/material.dart';
import 'package:adaptive_ui/core/theme/app_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('signsight', style: TextStyle(color: Colors.white)),
      backgroundColor: AppColors.primaryPurple,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
