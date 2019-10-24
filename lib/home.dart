import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Material(
      
      child: 
      SingleChildScrollView(child:  
      Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                        new Container(
                          height: MediaQuery.of(context).size.height *.3,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                          ),
                          child: Stack(),
                        ),
                        
                        new Center(
                          child:
                          Column(
                            children: <Widget>[
                          new Image.asset(
                            'Imagenes/Principal.png',
                          width: 400.0,
                          height: 380.0, ),
                          new Container(
                            height: 150.00,
                            width: 310.00,
                            child:
                          Column(
                            children: <Widget>[
                              Text('CARLOS LONGOBARDI', style: TextStyle(fontSize: 25)),
                              Text('21 ', style: TextStyle(fontSize: 16)),
                              Text('This is some description about the person, what he/she expects from the partner and also what the want to achieve in the life', style: TextStyle(fontSize: 16)),
                            ]
                            ),
                            decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(4.0),
                            boxShadow: [BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 6,
                            offset: Offset(1, 1),
                             )
                            ],
                             color: Colors.white,
                            ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                        FlatButton(
                        onPressed: () => {},
                        color: Colors.red,
                        padding: EdgeInsets.all(10.0),
                        child: Row( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                        Icon(Icons.favorite_border, color: Colors.white,),
                        Text("Connect",style: TextStyle(color: Colors.white),)
                        ],
                        )
                        ),
                        
                        FlatButton(
                        onPressed: () => {},
                        color: Colors.green,
                        padding: EdgeInsets.all(10.0),
                        child: Row( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                        Icon(Icons.send, color: Colors.white,),
                        Text("Message",style: TextStyle(color: Colors.white),)
                        ],
                        )
                        ),
                        
                            
                            ]
                            )
                            ]
                            
                          )
                        ),
                        
                            ]
                          )
                        ]
      )
      )
    ); 
  }
}