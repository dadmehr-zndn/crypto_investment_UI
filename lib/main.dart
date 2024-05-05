//TODO: uncomment
// ignore_for_file: prefer_const_constructors

import 'package:crypto_task/constants/colors.dart';
import 'package:crypto_task/views/investment_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Task',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: SolidColors.text,
              displayColor: SolidColors.text,
            ),
        scaffoldBackgroundColor: SolidColors.scaffold,
        appBarTheme: AppBarTheme(backgroundColor: SolidColors.scaffold),
      ),
      home: const InvestmentScreen(),
    );
  }
}
