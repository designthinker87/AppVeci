import 'package:app1/busqueda.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false, home: Index());
  }
}

class Index extends StatefulWidget{
  @override
  IndexStart createState() => IndexStart();

}

@override
class IndexStart extends State<Index>{
  Widget build(BuildContext context){

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      title: 'Bienvenido',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffff5722) ,
          title: Text('Bienvenidos a VECI - VECI.com'),
          //final color? foregroundColor: ,
        ),
        body: SingleChildScrollView(
            child: Column(
              children:<Widget>[
                Padding(padding: EdgeInsets.only(left: 5,top: 20,right: 5,bottom: 0),
                  child: Center(
                    child: Container(
                      width: 250,
                      height: 200,
                      child: Image.asset("image/blanco.png"),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5,top: 20,right: 5,bottom: 0),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Busqueda',
                          hintText: 'Palabra clave de la busqueda'
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5,top: 20,right: 5,bottom: 0),
                  child: ElevatedButton(onPressed: (){
                    print("Presiono el boton");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => busqueda()));
                  },
                    child: Text('Buscar'),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

