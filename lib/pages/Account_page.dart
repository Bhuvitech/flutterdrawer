import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({ Key? key }) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("MyAccount"),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search,color:Colors.white)),
           IconButton(onPressed: null, icon: Icon(Icons.favorite,color:Colors.red)),
            IconButton(onPressed: null, icon: Icon(Icons.shopping_basket,color:Colors.white)),
            

        ],
      ),
      drawer: Drawer(
       child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
    ),
  ),

      
      body:Center(child: Text("MyAccount",style:TextStyle(fontSize: 60,)),),
    );
  }
}

