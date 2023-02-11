import 'package:flutter/material.dart';

class MyTheme{
 static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
         titleTextStyle: TextStyle(color: Colors.black54,fontWeight:FontWeight.bold,fontSize: 20,),
           color: Colors.white,
           elevation: 0.0,
           iconTheme: IconThemeData(color: Colors.black),
         
        )
      );
}