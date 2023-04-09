import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateFullTest extends StatefulWidget{
  @override
  State<StateFullTest> createState() => _StateFullTestState();
}

class _StateFullTestState extends State<StateFullTest> with SingleTickerProviderStateMixin {
  late int counter;
  int current_index=0;
  List wedgits=[
    Container(color: Colors.yellow,),
    Container(color: Colors.red,),
    Container(color: Colors.blue,),
  ];

  @override
  void initState() {
    counter=1;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(centerTitle: true,title: Text('My App AppBar'),
           bottom: TabBar(tabs: [
             Tab(text: 'Profile',icon: Icon(Icons.person),),
             Tab(text: 'Home',icon: Icon(Icons.home),),
             Tab(text: 'Settings',icon: Icon(Icons.settings),)
           ]),
           // leading: Icon(Icons.arrow_back),
          ),
          body: TabBarView(
            children: [
            Container(color: Colors.yellow,),
            Container(color: Colors.red,),
            Container(color: Colors.blue,),
          ],

          ),
          drawer: Drawer(
            child: Column(
              children: [
               UserAccountsDrawerHeader(accountName:Text('Mohammed Saqer')
                 , accountEmail: Text('engmohammedsaqer22@gmail.com'),
               decoration: BoxDecoration(
                 color: Colors.cyan
               ),
               currentAccountPicture: CircleAvatar(child: Text('m'),
                 backgroundColor: Colors.grey,)),
                ListTile(leading: Icon(Icons.home),title: Text('Home'),),
                Divider(thickness: 1
                ,color: Colors.black),
                ListTile(leading: Icon(Icons.person),title: Text('Profile'),),
                Divider(thickness: 1
                    ,color: Colors.black),
                ListTile(leading: Icon(Icons.settings),title: Text('Settings'),),
                Divider(thickness: 1
                    ,color: Colors.black),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap:changeIndex,
            backgroundColor: Colors.cyan,
              selectedItemColor: Colors.yellow,
              currentIndex: current_index,
              items: [
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
          ]),

      ),
    );
  }
  changeIndex(index){
    setState(() {
      current_index=index;

    });

  }
}