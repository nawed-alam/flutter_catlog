import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Catlog App"),
        ), 
        body: Center(
          child: Container(
            child: Text("Welcome to first app!"),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}