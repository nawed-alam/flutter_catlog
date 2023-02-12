import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
 static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.yellow,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
         titleTextStyle: TextStyle(color: Colors.black54,fontWeight:FontWeight.bold,fontSize: 20,),
         color: Colors.white,
           elevation: 0.0,
           iconTheme: IconThemeData(color: Colors.black),
           
         
        )
      );
    static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

      //
      static Color creamColor = Color(0xfff5f5f5);
      static Color darkBluishColor = Color(0xff403b58);
}