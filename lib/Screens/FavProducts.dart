import 'package:flutter/material.dart';
import 'package:myfirstproject/Data/MyMetaData.dart';
import 'package:myfirstproject/Models/Products.dart';

class FavProducts extends StatelessWidget{
  List<Product> Fav_Products=MyMetaData.metaData.getProducts().where((element) => element.isFav).toList();
  @override
  Widget build(BuildContext context) {
   return Scaffold(body:
   ListView.builder(
       itemCount: Fav_Products.length,
       itemBuilder: (context,index){

       return ListTile(leading: CircleAvatar(child: Fav_Products[index].icon,),
           title: Text('${Fav_Products[index].name}'
             , textAlign: TextAlign.center,),
           subtitle: Text('${Fav_Products[index].getPrice()}'
               , textAlign: TextAlign.center));

   }));
  }

}