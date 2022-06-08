//global appbuton

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? label;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final bool hasIcon;
  final Color? color;
  final String? icon;
  final double? radius;

  const AppButton(
      {Key? key,
      this.onTap,
      this.label,
      this.width,
      this.padding,
      this.height,
      this.color,
      this.icon,
      this.radius,
      required this.hasIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 15)),
      ),
      padding: padding,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            hasIcon
                ? UnconstrainedBox(child: SvgPicture.asset(icon ?? ""))
                : const SizedBox(),
            AutoSizeText(label ?? ""),
          ]),
    );
  }
}
