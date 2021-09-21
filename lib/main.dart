import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_life_cycle/View/Home/home_page.dart';
import 'package:widget_life_cycle/View/OnBoarding/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // //Data Type
  // double version = 2.5;
  // int days = 3;
  // String tech = "Flutter";
  // bool isChecked = false;
  //
  // //num can contain double and integer type values
  // num temp = 30.5;
  //
  // //var contains any type of variable
  // var day = "Monday";
  //
  // //Constant Variable Decalre
  // const pi = 3.14;
  //
  // //final variable Decalre
  // final testData = 45;

  /// Diffrence between const and final is
  /// const never change when its declare.
  /// but final can be change if required.

  // $BuildContext is

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),    // use in Route

      themeMode: ThemeMode.light,
      // For Light Mode
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, // Auto manage whole theme according to given color
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),

      // For Dark Mode
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          brightness: Brightness.dark, // For brightness
          primarySwatch: Colors.green, // Auto manage whole theme according to given color
          primaryTextTheme: GoogleFonts.latoTextTheme()
      ),

      /// Route's
      // set initial Route
      // initialRoute: "/home",

      // Route's List
      routes: {
        "/" : (context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/login" : (context) => LoginPage()
      },

    );
  }
}