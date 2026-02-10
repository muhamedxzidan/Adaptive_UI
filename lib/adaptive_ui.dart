import 'package:adaptive_ui/core/theme/app_colors.dart';
import 'package:adaptive_ui/share/widgets/app_bar_widget.dart';
import 'package:adaptive_ui/share/widgets/custom_card.dart';
import 'package:adaptive_ui/share/widgets/custom_how_work_widgets.dart';
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

                  //  LayoutBuilder
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final card1 = CustomCard(
                        icon: const Icon(Icons.camera_alt),
                        title: 'SignSight',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        description:
                            'Use your camera to capture sign language in real time',
                      );

                      final card2 = CustomCard(
                        icon: const Icon(Icons.menu),
                        title: 'Text translation',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        description: 'convert signs to readable text instantly',
                      );

                      final card3 = CustomCard(
                        title: 'Voice output',
                        description:
                            'Listen to spoken translation for better understanding',
                        icon: const Icon(Icons.record_voice_over),
                      );

                      // شاشة كبيرة → الكاردات جنب بعض
                      if (constraints.maxWidth > 600) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: card1),
                            const SizedBox(width: 12),
                            Expanded(child: card2),
                            const SizedBox(width: 12),
                            Expanded(child: card3),
                          ],
                        );
                      }

                      // شاشة صغيرة → الكاردات تحت بعض
                      return Column(
                        children: [
                          card1,
                          const SizedBox(height: 20),
                          card2,
                          const SizedBox(height: 20),
                          card3,
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 20),
                  const CustomHowWorkWidgets(),
                  const SizedBox(height: 20),
                  CustomButton(
                    height: 50.h,
                    width: 200.w,
                    text: 'start translating',
                    color: AppColors.primaryPurple,
                    onTap: () => debugPrint('Start translation tapped'),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    height: 50.h,
                    width: 200.w,
                    border: Border.all(color: AppColors.primaryPurple),
                    icon: const Icon(Icons.history),
                    borderRadius: BorderRadius.circular(12),
                    text: 'view history',
                    style: const TextStyle(
                      color: AppColors.primaryPurple,
                      fontWeight: FontWeight.bold,
                    ),
                    color: AppColors.textWhite,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined),
                label: 'Translate',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
