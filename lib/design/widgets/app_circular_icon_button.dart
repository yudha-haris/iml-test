import 'package:flutter/material.dart';


class AppCircularIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback? onTap;
  const AppCircularIconButton({Key? key, required this.iconData, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle
        ),
        child: Icon(iconData, color: Colors.black, size: 32,),
      ),
    );
  }
}
