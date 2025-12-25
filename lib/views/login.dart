import 'package:flutter/material.dart';
import 'package:tharad/views/otp.dart';
import 'package:tharad/views/profile.dart';
import 'package:tharad/views/register.dart';

import '../core/widgets/app_Image.dart';
import '../core/widgets/app_button.dart';
import '../core/widgets/app_checkbox.dart';
import '../core/widgets/app_input_text.dart';
import '../core/widgets/app_text.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(
          vertical: kToolbarHeight + 20,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppImage(image: "app_icon.png", height: 80),
            const SizedBox(height: 80),
            AppText(
              "تسجيل الدخول",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),

            const Form(
              child: Column(
                children: [
                  AppInputText(
                    haveTitle: true,
                    title: "البريد الإلكتروني",
                    hintText: "user@example.com",
                  ),
                  SizedBox(height: 12),
                  AppInputText(
                    haveTitle: true,
                    title: "كلمة المرور",
                    hintText: "********",
                    isPasswordField: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AppCheckbox(val: isRememberMe),
                    AppText(
                      "تذكرني",
                      style: Theme.of(context).textTheme.displayMedium
                          ?.copyWith(fontWeight: FontWeight.w500,color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpView(),)),
                  child: AppText(
                    "هل نسيت كلمة المرور؟",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: Theme.of(context).primaryColor,
                      decorationStyle: TextDecorationStyle.solid,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            //todo handle onPressed
            AppButton(
              onPressed: () =>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProfileView(),), (route) => false,),

              isGradientColored: true,
              borderRadius: 8,
              padding: EdgeInsetsGeometry.symmetric(vertical: 17),
              child: AppText(
                "تسجيل الدخول",
                style: TextTheme.of(context).bodyMedium,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const RegisterView()),
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    const TextSpan(text: "ليس لديك حساب؟"),
                    TextSpan(
                      text: " إنشاء حساب جديد",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Theme.of(context).primaryColor,
                        decorationStyle: TextDecorationStyle.solid,
                        decorationThickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
