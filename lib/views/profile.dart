import 'package:flutter/material.dart';
import 'package:tharad/core/widgets/app_Image.dart';
import 'package:tharad/core/widgets/app_button.dart';
import 'package:tharad/core/widgets/app_text.dart';

import '../core/widgets/app_add_image.dart';
import '../core/widgets/app_input_text.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: AppText(
          "الملف الشخصي",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actionsPadding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
        actions: const [AppImage(image: "notification.svg", height: 40)],
      ),

      body: Container(
        padding: const EdgeInsetsGeometry.only(top: kToolbarHeight + 60),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorScheme.of(context).secondaryContainer,
              ColorScheme.of(context).primaryContainer,
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsetsGeometry.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(height: 10),
                      AppAddImage(),
                      SizedBox(height: 12),
                      AppInputText(
                        haveTitle: true,
                        title: "كلمة المرور القديمة",
                        hintText: "********",
                        isPasswordField: true,
                      ),
                      SizedBox(height: 12),
                      AppInputText(
                        haveTitle: true,
                        title: "كلمة المرور الجديدة",
                        hintText: "********",
                        isPasswordField: true,
                      ),
                      SizedBox(height: 12),
                      AppInputText(
                        haveTitle: true,
                        title: "تأكيد كلمة المرور الجديدة",
                        hintText: "********",
                        isPasswordField: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsGeometry.symmetric(
                          horizontal: 80,
                        ),
                        child: AppButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                padding: EdgeInsetsGeometry.symmetric(vertical: 20,horizontal: 20),
                                content: AppText("تم حفظ التغيرات بنجاح",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                backgroundColor: Theme.of(context).colorScheme.secondary,
                              ),
                            );
                          },
                          isGradientColored: true,
                          borderRadius: 8,
                          padding: const EdgeInsetsGeometry.symmetric(
                            vertical: 15,
                          ),
                          child: AppText(
                            "حفظ التغيرات",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                AppText(
                  "تسجيل الخروج",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.error,
                    fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
