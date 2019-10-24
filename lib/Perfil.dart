import 'package:flutter/material.dart';

class Perfiles extends StatelessWidget {
  
@override
  Widget build(BuildContext context){
    return Material(
      child: 
      SingleChildScrollView(child: Column(
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
                          new Container(
                            margin: new EdgeInsets.symmetric(vertical: 35),
                            child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                           
                        new CircleAvatar(
                           backgroundImage: AssetImage('Imagenes/Joven1.jpg'),
                           radius: 55,
                        ),

                        new Text('CARLOS LONGOBARDI',style: TextStyle(color: Colors.white, fontSize: 18.0),),

                        new Container(
                          height: 60,
                          width: 330,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(8.0),
                            boxShadow: [BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 6,
                            offset: Offset(1, 1),
                             )
                            ],
                            color: Colors.white,
                          ),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[ 
                                  Row(
                                    children: <Widget>[
                              Icon(Icons.favorite_border),
                              Text('30')
                                    ]
                                  ),
                                Text('Connections')
                                ]
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[ 
                                  Row(
                                    children: <Widget>[
                              Icon(Icons.chat_bubble_outline),
                              Text('10')
                                    ]
                                  ),
                                Text('Chats')
                                ]
                              )
                            ]
                          )
                        ),

                        new Container(
                          margin: new EdgeInsets.symmetric(vertical: 30),
                          width: 330,
                         child: MyCustomForm(),
                        )
                            ]
                        )
                          )
                        )
                            ]
                        )
                        ]
                        )
                          )
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  // Crea una clave global que identificará de manera única el widget Form 
  // y nos permita validar el formulario
  //
  // Nota: Esto es un `GlobalKey<FormState>`, no un GlobalKey<MyCustomFormState>! 
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Cree un widget Form usando el _formKey que creamos anteriormente
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Estado'
          ),
      TextFormField(
  // El validator recibe el texto que el usuario ha digitado
  validator: (value) {
    if (value.isEmpty) {
      return 'Por favor ingrese algo de texto';
    }
  },
      ),
Text(
            'Email'
          ),
          TextFormField(
  // El validator recibe el texto que el usuario ha digitado
  validator: (value) {
    if (value.isEmpty) {
      return 'Por favor ingrese algo de texto';
    }
  },
      ),
Text(
            'Numero telefónico'
          ),
          TextFormField(
  // El validator recibe el texto que el usuario ha digitado
  validator: (value) {
    if (value.isEmpty) {
      return 'Por favor ingrese algo de texto';
    }
  },
      ),

      Text(
            'Fecha de cumpleaños'
          ),
      TextFormField(
  // El validator recibe el texto que el usuario ha digitado
  validator: (value) {
    if (value.isEmpty) {
      return 'Por favor ingrese algo de textot';
    }
  },
      ),
      Container(
        width: 330,
        height: 90,
        child:
      Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: FlatButton(
              onPressed: () {
                
                if (_formKey.currentState.validate()) {
                  
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Procesando datos')));
                }
              },
              child: Text('Log out', style: TextStyle(color: Colors.white, fontSize: 20),),
              color: Colors.red,
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0))
            ),
          ),
      )
        ]
      )
);
  }
}