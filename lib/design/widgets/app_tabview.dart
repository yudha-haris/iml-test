import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AppTabView extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  final Widget body;
  const AppTabView({Key? key, required this.firstTab, required this.secondTab, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(
                            color: AppColors.primary,
                            width: 4
                        ))
                    ),
                    child: Text(firstTab, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
                  ),
                ),
                Container(height: 40, width: 1.5, color: AppColors.borderColor,),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(secondTab, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: body,
          )
        ],
      ),
    );
  }
}
