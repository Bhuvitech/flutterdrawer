import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Category"),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search,color:Colors.white)),
           IconButton(onPressed: null, icon: Icon(Icons.favorite,color:Colors.red)),
            IconButton(onPressed: null, icon: Icon(Icons.shopping_basket,color:Colors.white)),
            

        ],
      ),
      drawer: Drawer(),
      body:Center(child: Text("Category",style:TextStyle(fontSize: 60,)),),
    );
  }
}
