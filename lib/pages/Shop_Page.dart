import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({ Key? key }) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Shop"),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search,color:Colors.white)),
           IconButton(onPressed: null, icon: Icon(Icons.favorite,color:Colors.red)),
            IconButton(onPressed: null, icon: Icon(Icons.shopping_basket,color:Colors.white)),
            

        ],
      ),
      drawer: Drawer(),
      body:Center(child: Text("Shop",style:TextStyle(fontSize: 60,)),),
    );
  }
}
