import 'package:flutter/material.dart';
import 'package:lmi/design/constants/app_colors.dart';

class AppFlatButton extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;
  final IconData icon;
  final String title;
  final Color contentColor;
  const AppFlatButton({Key? key, required this.color, required this.onTap, required this.icon, required this.title, this.contentColor = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          side: const BorderSide(color: AppColors.borderColor)
        ),
        onPressed: onTap,
        child: Row(
          children: [Icon(icon, color: contentColor,), Text(title, style: TextStyle(color: contentColor),)],
        ));
  }
}
