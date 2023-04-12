import 'package:flutter/material.dart';
import 'package:myfirstproject/Data/MyMetaData.dart';
import 'package:myfirstproject/Screens/TestScreen.dart';

class ProductsScreen extends StatefulWidget {
  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List? products;
  List Products=MyMetaData.metaData.getProducts();
  @override
  void initState() {
    print('initState');
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('build');

    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Colors.cyan,
                  child: Row(

                    children: MyMetaData.metaData.getProducts().map((e){
                          return Container(
                            margin: EdgeInsets.all(10),
                              child: Image.asset('${e.imagePath}'));
                    }).toList(),
                  ),
                ),
              )
          ),
          // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: MyMetaData.metaData.getProducts().length,
          //   itemBuilder: (context, index) {
          //     return Image.asset('${MyMetaData.metaData.getProducts()[index].imagePath}');
          //   },
          // ),
        Expanded(
          flex: 2
            ,child: ListView.builder(
          itemCount: Products.length,
          itemBuilder: (context, index) {
            return  Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))
              ),
              child: ListTile(
                  leading: CircleAvatar(child: Products[index].icon,),
                  title: Text('${Products[index].name}'
                    ,textAlign: TextAlign.center,),
                  subtitle: Text('${Products[index].getPrice()}'
                      ,textAlign: TextAlign.center),
                  trailing: IconButton(icon:
                  Icon(Icons.favorite,color:Products[index].isFav?
                  Colors.red:null),
                  onPressed: (){
                    setState(() {
                      Products[index].changeFlag();

                    });

                  },),
                
              ),
            );
          },)
        )],
      ),
    );
  }
}
