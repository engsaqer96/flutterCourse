import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWdigit extends StatelessWidget{
  String url,name;
  Icon icon;
  MyWdigit(this.url,this.name,this.icon);
  @override
  Widget build(BuildContext context) {
   return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [ Image(width: 100,
           height: 100,
           image: NetworkImage(url))
         ,Text(name)
         ,icon]);
  }

}