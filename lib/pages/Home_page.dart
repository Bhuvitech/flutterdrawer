import 'package:flutter/material.dart';
import 'package:rk_mart/D_navigation.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rk_Mart"),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search,color:Colors.white)),
           IconButton(onPressed: null, icon: Icon(Icons.favorite,color:Colors.red)),
            IconButton(onPressed: null, icon: Icon(Icons.shopping_basket,color:Colors.white)),
            

        ],
      ),
      drawer: Navigations(),
      body:Center(child: Text("Home",style:TextStyle(fontSize: 60,)),),
    );
  }
}
