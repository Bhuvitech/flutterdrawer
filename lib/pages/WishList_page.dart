import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({ Key? key }) : super(key: key);

  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Wish List"),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search,color:Colors.white)),
           IconButton(onPressed: null, icon: Icon(Icons.favorite,color:Colors.red)),
            IconButton(onPressed: null, icon: Icon(Icons.shopping_basket,color:Colors.white)),
            

        ],
      ),
      drawer: Drawer(),
      body:Center(child: Text("Wish List",style:TextStyle(fontSize: 60,)),),
    );
  }
}

