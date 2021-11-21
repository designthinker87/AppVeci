import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistroTienda extends StatefulWidget{

  @override
  RegistroTiendaApp createState() => RegistroTiendaApp();

}

class RegistroTiendaApp extends State<RegistroTienda> {
  final firebase=FirebaseFirestore.instance;
  TextEditingController nombreTienda= TextEditingController();
  TextEditingController foto= TextEditingController();
  TextEditingController direccion= TextEditingController();
  TextEditingController descripcion= TextEditingController();
  TextEditingController website= TextEditingController();

  registroTienda() async{
    try{
      await firebase
          .collection("Tiendas")
          .doc()
          .set({
        "nombreTienda": nombreTienda.text,
        "rutaFoto": foto.text,
        "direccion": direccion.text,
        "descripcion": descripcion.text,
        "website": website.text,
        "estado": true
      });
    }catch(e){
      print (e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Registro de Tiendas")
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
              child: TextField(
                controller: nombreTienda,
                decoration: InputDecoration(
                  labelText: "Nombre de la tienda",
                  hintText: "Digite el nombre de la tienda",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
              child: TextField(
                controller: foto,
                decoration: InputDecoration(
                  labelText: "Foto",
                  hintText: "Digite el nombre de la tienda",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
              child: TextField(
                controller: direccion,
                decoration: InputDecoration(
                  labelText: "Dirección",
                  hintText: "Digite la dirección",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
              child: TextField(
                controller: descripcion,
                decoration: InputDecoration(
                  labelText: "Descripción",
                  hintText: "Digite la descripción de la tieda",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
              child: TextField(
                controller: website,
                decoration: InputDecoration(
                  labelText: "Website",
                  hintText: "Ingrese página web",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 0),
              child: ElevatedButton(
                  onPressed: () {
                    registroTienda();
                    nombreTienda.clear();
                    foto.clear();
                    direccion.clear();
                    descripcion.clear();
                    website.clear();




                  },
                  child: Text("Registrar")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
