import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catlog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Catlog App"),
        ), 
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
          itemCount: CatlogModel.items.length,
          itemBuilder: (context, index){
            return ItemWidget(item: CatlogModel.items[index],);
          },
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}