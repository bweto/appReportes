import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Botonoes

    return MaterialApp(
      title: 'Inspección de Ascensores',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Inspección de Ascensores'),
    );

  }
}

class HomePage extends StatefulWidget{
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Container(

          color: Colors.black54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ascensor()),
                        );
                      },
                      padding: EdgeInsets.all(60.0),
                      color: Colors.red,
                      child: Text('Ascensores',
                        style: TextStyle(fontSize: 32.0,
                                         fontWeight: FontWeight.w800,
                                         fontFamily: 'Roboto',
                                         letterSpacing: 0.5,
                                         color: Colors.white,
                                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: (){

                      },
                      padding: EdgeInsets.all(60.0),
                      color: Colors.amber,
                      child: Text('Escaleras',
                                  style: TextStyle(fontSize: 32.0,
                                                   fontWeight: FontWeight.w800,
                                                   fontFamily: 'Roboto',
                                                   letterSpacing: 0.5,
                                                   color: Colors.white,
                                                  ),
                                  textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: (){

                      },
                      padding: EdgeInsets.all(60.0),
                      color: Colors.teal,
                      child: Text('Puertas',
                          style: TextStyle(fontSize: 32.0,
                                            fontWeight: FontWeight.w800,
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.5,
                                            color: Colors.white,
                                          ),
                          textAlign: TextAlign.center,),
                    ),
                  ),
                ],
              )
            ],
          ),
      ),
    );
  }
}

class Ascensor extends StatelessWidget{
  var _info;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Reporte Ascensores"),
      ),
      body: Card(
        margin: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),

        child: Form(
          child: ListView(
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
                  Text('Datos Generales',
                        style: TextStyle(fontSize: 32.0,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              color: Colors.redAccent,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Activo',
                          fillColor: Colors.indigo,

                          contentPadding: EdgeInsets.all(10.0),

                          labelStyle: TextStyle(color: Colors.indigo,
                              fontSize: 28.0)
                      )
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Cliente',
                          fillColor: Colors.indigo,
                          contentPadding: EdgeInsets.all(10.0),
                          labelStyle: TextStyle(color: Colors.indigo,
                              fontSize: 28.0)
                      )
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Posición',
                          fillColor: Colors.indigo,
                          contentPadding: EdgeInsets.all(10.0),
                          labelStyle: TextStyle(color: Colors.indigo,
                              fontSize: 28.0)
                      )
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Dirección',
                          fillColor: Colors.indigo,
                          contentPadding: EdgeInsets.all(10.0),
                          labelStyle: TextStyle(color: Colors.indigo,
                              fontSize: 28.0)
                      )
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Fecha',
                          fillColor: Colors.indigo,
                          contentPadding: EdgeInsets.all(10.0),
                          labelStyle: TextStyle(color: Colors.indigo,
                              fontSize: 28.0)
                      )
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Orden de Servicio No',
                          fillColor: Colors.indigo,
                          contentPadding: EdgeInsets.all(10.0),
                          labelStyle: TextStyle(color: Colors.indigo,
                              fontSize: 28.0)
                      )
                  ),
              
            ],
          ),
        ),
      )
    );
  }
}