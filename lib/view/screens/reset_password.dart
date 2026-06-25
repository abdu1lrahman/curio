import 'package:curio/view/widgets/custom_button.dart';
import 'package:curio/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/screen5.svg'),
            SizedBox(height: 10),
            Text(
              "Forget your password?",
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "No worries, let's reset your password\nWrite down your email so we can send you a reset code",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'email'),
            SizedBox(height: 10),
            CustomButton(
              onTap: () {
                // reset_password()
              },
              title: "Reset Password",
            ),
          ],
        ),
      ),
    );
  }
}
