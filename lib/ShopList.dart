import 'package:flutter/material.dart';

class ShopList extends StatefulWidget{

  @override
  ShopListApp createState() => ShopListApp();

}

class ShopListApp extends State<ShopList> {


  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
    
    return Scaffold(
      appBar: AppBar(
          title: Text("Las tiendas de tu barrio")
      ),
      body: ListView(
        children: [
          titleSection
        ]
      )
    );
  }
}