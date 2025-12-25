import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.isChildIcon,
    this.borderRadius,
    this.padding, this.isGradientColored,
  });

  final void Function() onPressed;
  final Widget child;
  final Color? color;
  final bool? isChildIcon;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool? isGradientColored;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isGradientColored ?? false
          ? BoxDecoration(
        borderRadius:BorderRadiusGeometry.circular(borderRadius??0) ,
              gradient: LinearGradient(
                colors: [
                  ColorScheme.of(context).secondaryContainer,
                  ColorScheme.of(context).primaryContainer,
                ],
              ),
            )
          : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(0),
          alignment: AlignmentGeometry.center,
          padding: isChildIcon ?? false
              ? const WidgetStatePropertyAll(
                  EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 15),
                )
              : WidgetStatePropertyAll(padding),
          shape: WidgetStatePropertyAll(
            isChildIcon ?? false
                ? ContinuousRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(
                      borderRadius ?? 20,
                    ),
                  )
                : RoundedSuperellipseBorder(
                    borderRadius: BorderRadiusGeometry.circular(
                      borderRadius ?? 60,
                    ),
                  ),
          ),
          backgroundColor: isGradientColored ?? true
              ? const WidgetStatePropertyAll(Colors.transparent)
              : WidgetStatePropertyAll(
                  color ?? ColorScheme.of(context).primaryContainer,
                ),
        ),
        child: child,
      ),
    );
  }
}
