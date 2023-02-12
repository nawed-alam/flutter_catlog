// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catlog/models/catlog.dart';
import 'package:flutter_catlog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
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
      backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatlogHeader(),
                if(CatlogModel.items!=null && CatlogModel.items.isNotEmpty)
                CatalogList().expand()
                else
                Center(child: CircularProgressIndicator(),)
              ],),
          ),
        )
      );
  }
}

class CatlogHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
                "Trending products".text.xl2.make(),
              ],);
  }
}

class CatalogList extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatlogModel.items.length,
      itemBuilder:(context, index) {
        final catalog = CatlogModel.items[index];
      return CatalogItem(catalog:catalog);
      },
      );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  }) : assert(catalog!=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child:Row(
        children: [
         CatalogImage(image: catalog.image,),
         Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                 "\$${catalog.price}".text.xl.bold.make(),
                 ElevatedButton(onPressed: (){}, child: "Buy".text.make(),
                 
                 style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder())
                 ),
                 )
                ],
              ).pOnly(right: 8.0)
            ],
          )
         )
        ],
      ) 
    ).white.rounded.square(150).make().py16();
  }
}
class CatalogImage extends StatelessWidget {
 final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.network(image,
          ).box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}
