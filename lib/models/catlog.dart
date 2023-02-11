import 'package:flutter/material.dart';
class CatlogModel{
static final items =[
    Item(
  id:"1",
  name: "Nawed Alam",
  desc: "kuch v",
  color: "Yellow",
  price: 50000,
  image: "https://scontent.fccu2-3.fna.fbcdn.net/v/t39.30808-6/294547951_1757545387914530_1608761366972931872_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=730e14&_nc_ohc=HMdVpJTQ83gAX8WKVuD&_nc_ht=scontent.fccu2-3.fna&oh=00_AfCka3wkoI0AGJnD7TMnnzgoSDebgRR6B5om753bwVcmUA&oe=63EAF221"
    )
    
  ];
}
class Item{
  final String id;
  final String name;
  final String desc;
  final String color;
  final  num price;
  final String image;

  Item({required this.id,required this.name,required this.desc,required this.color,required this.price,required this.image});
  
  
}