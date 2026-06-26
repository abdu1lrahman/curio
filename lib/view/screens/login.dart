import 'package:curio/view/widgets/custom_button.dart';
import 'package:curio/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:curio/view/themes/app_colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.primaryDarkMode,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColorFiltered(
              colorFilter: _getLottieColorFilter(context),
              child: LottieBuilder.asset('assets/animations/animation1.json'),
            ),
            // LottieBuilder.asset('assets/animations/animation1.json'),
            Text(
              textAlign: TextAlign.center,
              "join us".tr,
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'user name'.tr),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'password'.tr, obscureText: true),
            Row(
              children: [
                Text("forget password".tr),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/resetpassword');
                  },
                  child: Text("click here to reset".tr),
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomButton(
              title: 'login'.tr,
              onTap: () {
                // login_with_email_and_password()
                Get.toNamed('/home');
              },
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Divider(thickness: 1)),
                Text("    Or    "),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                socialButton("assets/icons/google.svg", () {
                  // signin_with_google()
                }),
                socialButton("assets/icons/facebook.svg", () {
                  // signin_with_facebook()
                }),
                socialButton("assets/icons/apple.svg", () {
                  // signin_with_apple
                }),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Get.toNamed("/createaccount");
                  },
                  child: Text("Create Account"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget socialButton(String assetPath, VoidCallback onTap) {
    return SizedBox(
      width: 48,
      height: 48,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: SvgPicture.asset(assetPath, fit: BoxFit.contain),
      ),
    );
  }

  ColorFilter _getLottieColorFilter(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    if (isDark) {
      // Inverts black → white
      return const ColorFilter.matrix([
        -1,
        0,
        0,
        0,
        255,
        0,
        -1,
        0,
        0,
        255,
        0,
        0,
        -1,
        0,
        255,
        0,
        0,
        0,
        1,
        0,
      ]);
    }
    return const ColorFilter.mode(Colors.transparent, BlendMode.dst);
  }
}
