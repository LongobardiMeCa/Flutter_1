import 'package:flutter/material.dart';
import './main.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget{
  _MyAppState createState() => _MyAppState();
} 

class _MyAppState extends State<MyApp> {

  @override
  void initState(){
    Future.delayed(Duration(seconds: 5),
    (){
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => MyApp1()));
    },
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
body: Center(
  child: new Image.asset(
                            'Imagenes/Logo.png',
                          width: 400.0,
                          height: 380.0, ),
),
    );
  }
}