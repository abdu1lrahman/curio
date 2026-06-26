import 'package:curio/controller/UI/page_indicator_controller.dart';
import 'package:curio/model/locale/locale_controller.dart';
import 'package:curio/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final languageController = Get.find<LocaleController>();
    final pageController = Get.find<PageIndicatorController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: pageController.pageController,
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      alignment: Alignment.center,
                      child: SvgPicture.asset('assets/images/screen1.svg'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: const BoxDecoration(
                      color: Color(0xffF3E6DD),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "skills for the future".tr,
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(textAlign: TextAlign.center, "your portal".tr),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/images/screen2.svg'),
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: const BoxDecoration(
                      color: Color(0xffF3E6DD),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Fuel Your Curiosity",
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Explore hundreds of modern topics ranging from mobile development to 3D design, tailored perfectly to your interests.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/images/screen3.svg'),
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.45,
                    decoration: const BoxDecoration(
                      color: Color(0xffF3E6DD),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 20.0,
                      ),
                      child: Column(
                        spacing: 20,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            "Grow with a Global Community",
                            style: Theme.of(context).textTheme.headlineLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Connect with thousands of fellow learners, share your progress, collaborate on projects, and level up together.",
                          ),
                          CustomButton(
                            onTap: () {
                              Get.toNamed('/login');
                            },
                            title: "Login Now",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          IgnorePointer(
            child: Container(
              alignment: Alignment.center,
              height: 150,
              color: Colors.transparent,
              child: GetBuilder<PageIndicatorController>(
                init: PageIndicatorController(),
                builder: (controller) => SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 16.0,
                    dotWidth: 16.0,
                    spacing: 16.0,
                    dotColor: Colors.grey,
                    activeDotColor: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Change language",
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            builder: (context) {
              final List<Map<String, String>> languages = [
                {'name': 'English', 'flag': '🇺🇸', 'code': 'en'},
                {'name': 'العربية', 'flag': '🇸🇦', 'code': 'ar'},
                {'name': 'Français', 'flag': '🇫🇷', 'code': 'fr'},
              ];

              return Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Language",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: languages.length,
                        itemBuilder: (context, index) {
                          final lang = languages[index];
                          return ListTile(
                            leading: Text(
                              lang['flag']!,
                              style: const TextStyle(fontSize: 24),
                            ),
                            title: Text(
                              lang['name']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onTap: () {
                              languageController.changeLanguage(lang['code']!);
                              debugPrint(
                                'language Changed to ${lang['code']!}',
                              );
                              Get.back();
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.language),
      ),
    );
  }
}
