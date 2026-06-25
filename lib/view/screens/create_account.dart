import 'package:curio/view/widgets/custom_button.dart';
import 'package:curio/view/widgets/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset('assets/animations/animation2.json'),
            Text(
              textAlign: TextAlign.center,
              "Learn with us",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'User name'),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'Email'),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'Password', obscureText: true),
            SizedBox(height: 10),
            CustomTextFormField(
              hintText: 'Confirm Password',
              obscureText: true,
            ),
            SizedBox(height: 10),
            CustomButton(
              onTap: () {
                // signin_with_email_and_password()
              },
              title: 'Register',
            ),
            SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  height: 1.4,
                ),
                children: [
                  const TextSpan(
                    text: "By registering, you agree to Curio's\n",
                  ),
                  TextSpan(
                    text: "Terms of Service",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle Terms Tap
                      },
                  ),
                  const TextSpan(text: " and "),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle Privacy Tap
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
