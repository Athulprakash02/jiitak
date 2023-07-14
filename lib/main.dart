import 'package:flutter/material.dart';
import 'package:jiitak/core/constants.dart';
import 'package:jiitak/presentation/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:  Color(0xFFFAFAFA),
        appBarTheme: const AppBarTheme(
          backgroundColor: kWhiteColor,
          titleTextStyle: TextStyle(color: kBlackColor,fontSize: 16)
        )
      ),
      home: const HomeScreen(),

    );
  }
}