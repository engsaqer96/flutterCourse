import 'package:flutter/material.dart';
import 'package:myfirstproject/Models/StudentModel.dart';
import 'package:myfirstproject/Screens/FavProducts.dart';
import 'package:myfirstproject/Screens/ProductsScreen.dart';

class TestScreen extends StatefulWidget {
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<StudentModel> students = [
    StudentModel(name: 'Ali', gpa: 90.1),
    StudentModel(name: 'Ahmed', gpa: 88),
    StudentModel(name: 'Huda', gpa: 95),
    StudentModel(name: 'Hala', gpa: 99),
    StudentModel(name: 'Shahid', gpa: 99),
    StudentModel(name: 'Ahmed', gpa: 88),
    StudentModel(name: 'Huda', gpa: 95),
    StudentModel(name: 'Hala', gpa: 99),
    StudentModel(name: 'Shahid', gpa: 99),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.grey,
            title: Text('Products Stroe'),
            bottom: TabBar(
              tabs: [
                Tab(child: Text('Products'),icon: Icon(Icons.production_quantity_limits),),
                Tab(child: Text('Fav'),icon: Icon(Icons.favorite),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ProductsScreen(),
              FavProducts()

            ],
          )
      ),
    );

  }
}
