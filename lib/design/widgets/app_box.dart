import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double radius;
  final Color? color;
  const AppBox({Key? key, required this.child, this.padding, this.margin, this.radius = 10, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(8),
      margin: margin,
      decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: AppColors.borderColor)
      ),
      child: child,
    );
  }
}
