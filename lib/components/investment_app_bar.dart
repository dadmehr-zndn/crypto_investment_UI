//TODO: uncomment

// ignore_for_file: prefer_const_constructors

import 'package:crypto_task/constants/colors.dart';
import 'package:flutter/material.dart';

class InvestmentAppBar extends StatelessWidget {
  const InvestmentAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: Icon(
        Icons.arrow_back_ios_new_outlined,
        color: SolidColors.icon,
      ),
      title: Text(
        'INVESTMENT',
        style: TextStyle(fontSize: 18, color: SolidColors.text),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: size.width / 34.26),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: SolidColors.card,
              borderRadius: BorderRadius.circular(7),
            ),
            child: Center(
              child: Icon(
                Icons.search,
                color: SolidColors.icon,
              ),
            ),
          ),
        )
      ],
      centerTitle: true,
    );
  }
}
