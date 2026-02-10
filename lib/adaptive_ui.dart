import 'package:adaptive_ui/core/theme/app_colors.dart';
import 'package:adaptive_ui/share/widgets/app_bar_widget.dart';
import 'package:adaptive_ui/share/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_ui/share/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdaptiveUi extends StatelessWidget {
  const AdaptiveUi({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: const AppBarWidget(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'SignSight',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Breaking communication barriers\nwith real-time sign language translation',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),

                  // Simple button with icon and text
                  CustomButton(
                    height: 50.h,
                    width: 200.w,
                    onTap: () => debugPrint('Start translation tapped'),
                    color: AppColors.primaryPurple,
                    icon: const Icon(
                      Icons.camera_alt,
                      color: AppColors.textWhite,
                    ),
                    text: 'Start Translation',
                  ),

                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: CustomCard(
                      width: 200.w,
                      icon: const Icon(Icons.camera_alt),
                      title: 'SignSight',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      description:
                          'Use your camera to capture sign language in real time',
                    ),
                  ),
                  CustomCard(
                    width: 200.w,
                    icon: const Icon(Icons.menu),
                    title: 'Text translation',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    description: 'convert signs  to readable text instantly',
                  ),
                  const SizedBox(height: 20),
                  CustomCard(
                    width: 200.w,
                    title: "Voice output",
                    description:
                        "Listen to spoken translation for better understanding",
                    icon: const Icon(Icons.record_voice_over),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
