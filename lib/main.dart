import 'package:flutter/material.dart';
import 'package:flutter_catlog/pages/login_page.dart';
import 'package:flutter_catlog/utils/routes.dart';
import 'pages/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    //  home:HomePage(),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
     // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/",
     routes: {
      "/":(context) => LoginPage(),
      MyRoutes.homeRoute:(context) => HomePage(),
       MyRoutes.loginRoute:(context) => LoginPage(),
     },
    );
  }
}