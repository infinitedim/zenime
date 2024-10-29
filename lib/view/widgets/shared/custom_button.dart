import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zenime/model/icon_style.dart';
import 'package:zenime/size_config.dart';

class CustomButton extends GetView {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.textDecoration,
    this.textStyle,
    this.buttonStyle,
    this.isLoading = false,
    this.icon,
    this.iconStyle,
    this.height = 56,
  });
  final String? text;
  final GestureTapCallback? onPressed;
  final TextDecoration? textDecoration;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  final bool isLoading;
  final IconData? icon;
  final double height;
  final IconStyle? iconStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(height),
      child: TextButton(
        style: buttonStyle ??
            ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: WidgetStatePropertyAll<Color>(
                Theme.of(context).colorScheme.primary,
              ),
            ),
        onPressed: onPressed,
        child: isLoading
            ? CircularProgressIndicator(
                color: Theme.of(context).colorScheme.surface,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) FaIcon(icon, color: iconStyle?.iconColor),
                  SizedBox(width: 10),
                  Text(
                    text ?? '',
                    style: textStyle ??
                        TextStyle(
                          decoration: textDecoration,
                          fontSize: getProportionateScreenWidth(18),
                          color: Theme.of(context).colorScheme.surface,
                        ),
                  ),
                ],
              ),
      ),
    );
  }
}
