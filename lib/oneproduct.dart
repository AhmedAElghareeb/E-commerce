import 'package:ecommerce_rms/productinfo.dart';
import 'package:flutter/material.dart';

class OneProduct extends StatelessWidget
{
  String ploc;
  String pname;
  String pdes;
  String ppr;
  OneProduct(this.ploc, this.pname, this.pdes, this.ppr);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductInfo(ploc, pname, pdes, ppr)));
      },
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(ploc, width: 200, height: 200, ),
              Text(
                pname,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(height: 10,),
        ],
      ),
    );
  }
}