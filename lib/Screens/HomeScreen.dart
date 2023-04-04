import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstproject/Models/Person.dart';
import 'package:myfirstproject/Widgits/MyWdigit.dart';
class HomeScreen extends StatelessWidget {
  List<Person> list=[Person('https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
                            'Abed El Aziz',
                             Icon(Icons.sports_baseball)),
                     Person( 'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528',
                             'Ahmed',
                            Icon(Icons.sports_basketball)),
    Person( 'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528',
        'Ahmed',
        Icon(Icons.sports_basketball))];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
       child: Column(
         children: [
           for(int i=0;i<list.length;i++)
           MyWdigit(list[i].url,list[i].name,list[i].icon)
           ,
           ElevatedButton(onPressed:()=>showAlertDialog(context), child: Text('Press',))

          ],
       ),
      )
    );
  }
  void viewSnakBar(BuildContext context){
     SnackBar snackBar=SnackBar(content: Text('Hi This is snakbar'),duration: Duration(seconds: 5),
     action: SnackBarAction(label: 'Press', 
     onPressed: ()=>print('press from snack bar'),)
       ,);
     ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
  void showAlertDialog(BuildContext context){
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('This is Title'),
      content: Text('This is Content'),
      actions: [ElevatedButton(onPressed: ()=>print('ok'), child: Text('Ok')),
                ElevatedButton(onPressed: ()=>print('cancel'), child: Text('Cancel'))],
    ),);
  }
}



