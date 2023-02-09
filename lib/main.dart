import 'package:flutter/material.dart';
import 'package:flutter_catlog/Login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Catlog App"),
      //   ), 
      //   body: Center(
      //     child: Container(
      //       child: Text("Welcome to first app!"),
      //     ),
      //   ),
      //   drawer: Drawer(),
      // ),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
       // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      routes: {
        "/":(context)=> LoginPage(),
      },
    );
  }
}
