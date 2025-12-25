import 'package:flutter/material.dart';
import 'package:tharad/core/widgets/app_Image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:tharad/core/widgets/app_button.dart';
import 'package:tharad/views/profile.dart';
import '../core/widgets/app_add_image.dart';
import '../core/widgets/app_input_text.dart';
import '../core/widgets/app_text.dart';
import 'login.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(
            vertical: kToolbarHeight + 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const AppImage(image: "app_icon.png", height: 80),
              const SizedBox(height: 40),
              AppText(
                "إنشاء حساب جديد",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const AppAddImage(),
                    const SizedBox(height: 12),
                    const Form(
                      child: Column(
                        children: [
                          AppInputText(
                            haveTitle: true,
                            title: "اسم المستخدم",
                            hintText: "user name",
                          ),
                          SizedBox(height: 12),
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
                          SizedBox(height: 12),
                          AppInputText(
                            haveTitle: true,
                            title: "تأكيد كلمة المرور",
                            hintText: "********",
                            isPasswordField: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    //todo handle onPressed
                    AppButton(
                      onPressed: () =>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProfileView(),), (route) => false,),

                      isGradientColored: true,
                      borderRadius: 8,
                      padding: EdgeInsetsGeometry.symmetric(vertical: 17),
                      child: AppText(
                        "إنشاء حساب جديد",
                        style: TextTheme.of(context).bodyMedium,
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginView(),)),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            const TextSpan(
                              text: "لديك حساب؟",
                            ),
                            TextSpan(
                              text: " تسجيل الدخول",
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor: Theme.of(context).primaryColor,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationThickness: 2
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
