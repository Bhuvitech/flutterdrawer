import 'package:flutter/material.dart';
import 'package:rk_mart/pages/Home_page.dart';


class Navigations extends StatefulWidget {
  const Navigations({ Key? key }) : super(key: key);

  @override
  _NavigationsState createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
    final padding=EdgeInsets.symmetric(horizontal:20);
  @override
  Widget build(BuildContext context) {

    return Drawer(
  child: Material(
    color:Colors.blue,
    child:ListView(
      padding: padding,
      children:<Widget> [
  SizedBox(height: 48,),
buildMenuItem(
text: 'home',
icon: Icons.home,
onClicked: ()=>selectedItem(context, 0)
  ),

Divider(color: Colors.white70,)

    ],) ,),


      
    );
   
  }
 Widget buildMenuItem({
   required String text,
   required IconData icon ,
   VoidCallback ? onClicked,
  }){
    final color=Colors.white;
    final hoverColor=Colors.white;
    return ListTile(
      leading: Icon(icon,color: color,  size: 24.0,),
      title: Text(text,style: TextStyle(color: color,fontSize: 24.0),),
      hoverColor: hoverColor,
      onTap: onClicked,
    );

  }
  void selectedItem(BuildContext context,int index){
 Navigator.of(context).pop();
 switch (index) {
   case 0:
     Navigator.of(context).push(MaterialPageRoute(builder:(context)=>
     Home(), ));
     break;
 }
  }

}

  