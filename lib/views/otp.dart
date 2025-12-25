import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tharad/views/profile.dart';

import '../core/widgets/app_Image.dart';
import '../core/widgets/app_button.dart';
import '../core/widgets/app_checkbox.dart';
import '../core/widgets/app_input_text.dart';
import '../core/widgets/app_text.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

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
              "رمز التحقق",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            AppText(
              " لاستكمال فتح حسابك ادخل رمز التحقق المرسل عبر البريد الإلكتروني",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 50),
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                textStyle: TextTheme.of(context).displayMedium?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                hintCharacter: "_",
                hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 25,
                  fontVariations: <FontVariation>[
                    const FontVariation('wght', 700),
                  ],
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                cursorColor: Theme.of(context).hintColor,
                cursorWidth: 3,
                pinTheme: PinTheme(
                  fieldWidth: 70,
                  fieldHeight: 70,
                  borderRadius: BorderRadius.circular(8),
                  shape: PinCodeFieldShape.box,
                  inactiveColor: Theme.of(context).colorScheme.surface,
                  selectedColor: Theme.of(context).colorScheme.surface,
                  activeColor: Theme.of(context).colorScheme.surface,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //todo add timer
                      AppText(
                        "ث 00:59",
                        style: Theme.of(context).textTheme.displayMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).hintColor,
                            ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    //todo add action of resend otp code again
                    onTap: () {},
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          const TextSpan(text: "لم يصلك رمز ؟"),
                          TextSpan(
                            text: " إعادة ارسال",
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(
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
            const SizedBox(height: 40),
            //todo handle onPressed
            AppButton(
              onPressed: () =>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProfileView(),), (route) => false,),
              isGradientColored: true,
              borderRadius: 8,
              padding: EdgeInsetsGeometry.symmetric(vertical: 17),
              child: AppText(
                "المتابعة",
                style: TextTheme.of(context).bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
