import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_rms/datainput.dart';
import 'package:ecommerce_rms/oneproduct.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DataInput()));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Home Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: ()
            {
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => DataInput(),
              ),);
            },
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("Products").get(),
        builder: (context, AsyncSnapshot snapshot)
        {
          if (snapshot.hasData == true)
          {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index)
                {
                  return OneProduct(
                    snapshot.data.docs[index]["imagelocation"],
                    snapshot.data.docs[index]["name "],
                    snapshot.data.docs[index]["decription"],
                    snapshot.data.docs[index]["price"],
                  );
                }
            );
          }
          else
          {
            return Center(
              child: Text(
                "Waiting...",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}