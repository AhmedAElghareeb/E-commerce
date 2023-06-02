import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget
{
  String ploc;
  String pname;
  String pdes;
  String ppr;
  ProductInfo(this.ploc, this.pname, this.pdes, this.ppr);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[300],
        title: Text(
          "Product Information",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(ploc, width: 200,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(pname, style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(pdes, style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("\$ ${ppr}", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}