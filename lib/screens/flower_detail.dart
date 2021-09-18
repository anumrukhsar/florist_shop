import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlowerDetail extends StatelessWidget{
  final item;
  const FlowerDetail({this.item});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(item.name),centerTitle: true,actions: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(item.isAddedToWishList?Icons.favorite:Icons.favorite_border),
      )],),
      body: Container(
        padding: EdgeInsets.all(30),
       child: Column(
         children: [
            Hero(
                tag: item.name,
                child: Image.network(item.img,fit:BoxFit.contain,height: 200, loadingBuilder: (context,child,loadingProgress){
                  if(loadingProgress==null) return child;
                  return CircularProgressIndicator();
                },)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Text(item.name,style: GoogleFonts.mukta(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),),
           Text(item.price,style: GoogleFonts.mukta(textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.green)),),]),
         ],
       ),
   ),
    );
  }
}