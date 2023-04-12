import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstproject/Models/Products.dart';

class MyMetaData{
  MyMetaData._();
  static MyMetaData metaData=MyMetaData._();
  List<Product> getProducts(){
    List<Product> l=[
      Product(name: 'LabTop', price:850,
          imagePath:'assets/images/img1.jpg',icon: Icon(Icons.computer),isFav: true),
      Product(name: 'Camera', price:600, imagePath:'assets/images/img2.jpg',
          icon: Icon(Icons.camera_alt),isFav:false),
      Product(name: 'Product', price:100, imagePath:'assets/images/img3.jpg',
          icon: Icon(Icons.production_quantity_limits),
      isFav: false),
      Product(name: 'Phone', price:350, imagePath:'assets/images/img4.jpg',
          icon: Icon(Icons.phone_android),
      isFav: true),
    ];
    return l;
  }
}