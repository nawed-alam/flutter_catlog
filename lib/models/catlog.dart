import 'package:flutter/material.dart';
class CatlogModel{
static  List<Item> items =[
    Item(
            id: 1,
            name: "iPhone 12 Pro",
            desc: "Apple iPhone 12th generation",
            price: 999,
            color: "#33505a",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"
    )
    
  ];
}
class Item{
  final int id;
  final String name;
  final String desc;
  final String color;
  final  num price;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.color,required this.price,required this.image});
 factory Item.fromMap(Map<dynamic,dynamic>map)
  {
  return  Item(
             id:map["id"],
            name: map["name"],
            desc: map["desc"],
            price: map["price"],
            color: map["color"],
            image:map["image"]
  );
  }
  toMap()=>{
    "id":id,
    "name":name,
    "desc":desc,
    "price":price,
    "color":color,
    "image":image
  };
}