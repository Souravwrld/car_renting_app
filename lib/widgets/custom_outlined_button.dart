import 'package:car_renting_app/widgets/base_button.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends BaseButton {
  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Widget? label;

  CustomOutlinedButton(
      {Key? key,
      this.decoration,
      this.leftIcon,
      this.rightIcon,
      this.label,
      EdgeInsets? margin,
      VoidCallback? onPressed,
      ButtonStyle? buttonStyle,
      Alignment? alignment,
      TextStyle? buttonTextStyle,
      bool? isDisabled,
      double? height,
      double? width,
      required String text})
      : super(
            text: text,
            onPressed: onPressed,
            buttonStyle: buttonStyle,
            isDisabled: isDisabled,
            buttonTextStyle: buttonTextStyle,
            height: height,
            width: width,
            alignment: alignment,
            margin: margin);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildOutlinedButtonWidget)
        : buildOutlinedButtonWidget;
  }

  Widget get buildOutlinedButtonWidget => Container(
        height: this.height ?? 48,
        width: this.width ?? double.maxFinite,
        margin: margin,
        decoration: decoration,
        child: OutlinedButton(
            style: buttonStyle,
            onPressed: isDisabled ?? false ? null : onPressed ?? () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leftIcon ?? const SizedBox.shrink(),
                Text(
                  text,
                  style: buttonTextStyle ?? theme.textTheme.bodyMedium,
                ),
                rightIcon ?? const SizedBox.shrink()
              ],
            )),
      );
}
