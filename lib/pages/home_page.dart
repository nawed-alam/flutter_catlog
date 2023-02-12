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
    await Future.delayed(Duration(seconds: 2));
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
          child:(CatlogModel.items != null && CatlogModel.items.isNotEmpty)? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              ),
             itemBuilder: (context,index){
              final item=CatlogModel.items[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: GridTile(
                  header: Text(item.name),
                  footer: Text(item.price.toString()),
                  child: Image.network(item.image)
                  ));
             },
             itemCount: CatlogModel.items.length,
             ):Center(
            child: CircularProgressIndicator(color: Colors.black,),
            
          )
        ),
        drawer: MyDrawer(),
      );
  }
}
