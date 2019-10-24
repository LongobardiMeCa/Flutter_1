import 'package:flutter/material.dart';
import './chat.dart';
import './home.dart';
import './Conexion.dart';
import './Perfil.dart';

class MyApp1 extends StatefulWidget{
@override
State<StatefulWidget> createState(){
  return MyAppState();
}
}

class MyAppState extends State<MyApp1>{
  int _selectedPage = 0;
  final _pageOptions = [
    Home(), 
    Conectado(),
    Chat(),
    Perfiles(),
  ] ;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title: 'Aplicacion Flutter',
    theme: ThemeData(primarySwatch: Colors.blue,
    ),
    home: Scaffold(
    body: _pageOptions[_selectedPage],
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedPage,
      onTap: (int index){ 
        setState(() {
         _selectedPage=index; 
        });
      },
      items: [
        
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.black,),
          title: Text('Inicio',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.green,
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border,color: Colors.black,),
          title: Text('Contactos',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, color: Colors.black,),
          title: Text('Chats',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,color: Colors.black,),
          title: Text('Perfil',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.grey,
        ),

      ],
      ),
     ),
    );
  }
} 