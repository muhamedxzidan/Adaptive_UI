import 'package:adaptive_ui/core/theme/app_colors.dart';
import 'package:adaptive_ui/share/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_ui/share/widgets/custom_button.dart';

class AdaptiveUi extends StatelessWidget {
  const AdaptiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Clean look
      home: Scaffold(
        appBar: const AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'SignSight',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Breaking communication barriers\nwith real-time sign language translation',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // First Button: Standard Size
              CustomButton(
                onTap: () => debugPrint('Start translation tapped'),
                height: 55,
                width: double.infinity, // Full width for better UX on mobile
                color: AppColors.primaryPurple,
                icon: const Icon(Icons.camera_alt, color: AppColors.textWhite),
                text: 'Start Translation',
              ),

              const SizedBox(height: 20),

              // Second Button: Large Adaptive Size
              CustomButton(
                onTap: () => debugPrint('Capture sign tapped'),
                borderRadius: BorderRadius.circular(20),
                height: 180,
                width: double.infinity,
                text:
                    'Capture Sign\nUse your camera to capture sign language in real time',
                color: AppColors.primaryPurple.withValues(
                  alpha: 0.9,
                ), // Subtle variation
                icon: const Icon(
                  Icons.videocam,
                  color: AppColors.textWhite,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
