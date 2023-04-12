import 'package:flutter/cupertino.dart';

class Product {
  String name,imagePath;
  double price;
  Icon icon;
  bool isFav;
  Product({required this.name,required this.price,
    required this.imagePath,required this.icon
  ,required this.isFav});
   getPrice(){
    return price.toString()+'\$';
  }
  bool changeFlag(){

     this.isFav=! this.isFav;

     return this.isFav;
  }

}