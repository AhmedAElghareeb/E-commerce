import 'package:ecommerce_rms/home.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataInput extends StatelessWidget
{
  TextEditingController pna = new TextEditingController();
  TextEditingController ppr = new TextEditingController();
  TextEditingController pdes = new TextEditingController();
  TextEditingController ploc = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30.0,
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  "Items In assets/images/Name Of Item!!!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
            controller: pna,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: "Product Name",
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
            ),
            cursorColor: Colors.blue[300],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            cursorColor: Colors.blue[300],
            controller: ppr,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: "Product Price",
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            cursorColor: Colors.blue[300],
            controller: pdes,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: "Product Description",
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            cursorColor: Colors.blue[300],
            controller: ploc,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: "Product Location",
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            minWidth: 100.0,
            height: MediaQuery.of(context).size.height * 0.06,
            color: Colors.blue,
            child: Text("Add"),
            onPressed: ()
            {
              String pname = pna.text;
              String pprice = ppr.text;
              String pdescription = pdes.text;
              String pimagelocation = ploc.text;

              FirebaseFirestore.instance.collection("Products").add(
                <String, dynamic> {
                  "name " : pname,
                  "price" : pprice,
                  "decription" : pdescription,
                  "imagelocation" : pimagelocation,
                }
              );
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ],
          ),
      ),
    );
  }
}
