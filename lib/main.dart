import 'package:flutter/material.dart';
import 'package:rk_mart/D_navigation.dart';
import 'package:rk_mart/pages/Account_page.dart';
import 'package:rk_mart/pages/Category_page.dart';
import 'package:rk_mart/pages/Home_page.dart';
import 'package:rk_mart/pages/Shop_Page.dart';
import 'package:rk_mart/pages/WishList_page.dart';


void main() => runApp(new MaterialApp(home:MyApp(),debugShowCheckedModeBanner:false,));
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int currentIndex = 0;
   final screen=[
 Home(),
 Category(),
 Shop(),
WishList(),
Account()
   ];
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Rk_Mart"),
      //   actions: [
      //     IconButton(onPressed: null, icon: Icon(Icons.search,color:Colors.white)),
      //      IconButton(onPressed: null, icon: Icon(Icons.favorite,color:Colors.red)),
      //       IconButton(onPressed: null, icon: Icon(Icons.shopping_basket,color:Colors.white)),
            

      //   ],
      // ),
      drawer: Navigations(),
      // body:screen[currentIndex],
      body:IndexedStack(index:currentIndex,children:screen,),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex,
        onTap: (index)=>setState(()=>currentIndex=index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 30.0,
        items: [
BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Category',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Shop',
            backgroundColor: Colors.blue,
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wish List',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'MyAccount',
            backgroundColor: Colors.blue,
          ),
          
      ],),
    );
  }
}


