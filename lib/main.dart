import 'package:first_project/screens/home_page.dart';
import 'package:first_project/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          themeMode:ThemeMode.light,
          // only for without theme apply color
          theme: ThemeData(primarySwatch: Colors.orange,
          fontFamily: GoogleFonts.lato().fontFamily
          ,primaryTextTheme: GoogleFonts.latoTextTheme()
          ),
      // for theme apply with switch working of color then we use this
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark
      ),
      initialRoute: "/login",
      routes: {
        "/":(context)=> HomePage(),
        "/login":(context)=>LoginPage()
      },
    );
  }
}
