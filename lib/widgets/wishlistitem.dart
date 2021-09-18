import 'package:florist_shop/model/flower.dart';
import 'package:florist_shop/screens/flower_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishListItem extends StatelessWidget {
  final flower;

  const WishListItem({this.flower});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>openDetail(flower,context),
      child: Card(
        child: Row(children: [
         Expanded(flex:3,child: Hero(
           tag: flower.name,
           child: Image.network(
             flower.img,
             fit: BoxFit.contain,
             height: 100,
             width: 100,
             loadingBuilder: (context,child,loadingProgress){
               if(loadingProgress==null) return child;
               return CircularProgressIndicator();
             },
           ),
         ),),
      Expanded(flex:7,child: ListTile(
            title: Text(
              flower.name,
              style: GoogleFonts.mukta(
                  textStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
              )),
            ),
            subtitle: Text(flower.price,
                style: GoogleFonts.mukta(
                    textStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                ))),
          ),),
        ]),
      ),
    );
  }
  void openDetail(Flower flower,BuildContext context){
    // Navigator.pushNamed(context, '/detail/$flower');
    Navigator.push(context, MaterialPageRoute(builder: (context)=>FlowerDetail(item:flower)));

  }
}
