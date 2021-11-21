import 'package:flutter/material.dart';

class busqueda extends StatefulWidget{

  @override
  BusquedaApp createState() => BusquedaApp();

}

class BusquedaApp extends State<busqueda>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultado de la busqueda")
      ),
    );

  }
}