import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catlog/models/catlog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    
    loadData();
  }
  loadData()async{
final catlogjson = await rootBundle.loadString("assests/files/catlog.json");
final decodedata= jsonDecode(catlogjson);
var productdata=decodedata["products"];
CatlogModel.items = List.from(productdata)
.map<Item>((item) => Item.fromMap(item))
.toList();
setState(() {
  
});
  }
  @override
  Widget build(BuildContext context) {
    // final dummyList =List.generate(50,(index)=>CatlogModel.items[0]);
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