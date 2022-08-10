import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swim/presentation/widget/button/base_button.dart';
import 'package:swim/service/theme_service.dart';

enum ButtonType {
  main(height: 54, horizontalPadding: 35),
  secondary(height: 54, horizontalPadding: 35),
  tertiary(height: 40, horizontalPadding: 15);

  final double height;
  final double horizontalPadding;
  const ButtonType({
    required this.height,
    required this.horizontalPadding,
  });
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.onPressed,
    this.text,
    this.icon,
    this.padding,
    ButtonType? type,
  })  : type = type ?? ButtonType.main,
        super(key: key);

  final String? text;
  final Widget? icon;
  final ButtonType type;
  final EdgeInsets? padding;
  final Function()? onPressed;

  final double borderRadius = 22;
  final Duration pressedAnimDuration = const Duration(milliseconds: 160);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, _) {
        return BaseButton(
          onPressed: onPressed,
          builder: (isPressed) {
            return IntrinsicWidth(
              child: AnimatedContainer(
                duration: pressedAnimDuration,
                height: type.height,
                decoration: BoxDecoration(
                  color:
                      isPressed ? themeService.primaryColor : themeService.onPrimaryColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: Border.all(
                    color: themeService.onPrimaryColor,
                    width: 2,
                  ),
                ),
                padding: padding ??
                    EdgeInsets.symmetric(
                      horizontal: type.horizontalPadding,
                    ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Icon
                    if (icon != null) icon!,

                    /// Text
                    if (text != null)
                      Text(
                        text!,
                        style: themeService.buttonText.copyWith(
                          color: isPressed
                              ? themeService.onPrimaryColor
                              : themeService.primaryColor,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
