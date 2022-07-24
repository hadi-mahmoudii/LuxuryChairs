import 'package:chairluxeshop/constants.dart';
import 'package:chairluxeshop/view/home/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
       appBarTheme:const AppBarTheme(color: Colors.transparent , elevation: 0 , brightness: Brightness.light),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

