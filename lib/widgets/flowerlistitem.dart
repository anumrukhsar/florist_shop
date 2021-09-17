import 'package:florist_shop/model/flower.dart';
import 'package:florist_shop/screens/flower_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlowerListItem extends StatelessWidget{
  final flowerItem;
  final Function() addToWishList;
  const FlowerListItem({this.flowerItem,required this.addToWishList});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>openDetail(flowerItem,context),
      child: Card(
        child: Column(
          children: [
            Align(alignment:Alignment.topRight,child: IconButton(onPressed:()=> addToWishList(), icon: Icon(flowerItem.isAddedToWishList?Icons.favorite:Icons.favorite_border))),
            Hero(
              tag: flowerItem.name,
              child: Image.network(
                flowerItem.img,
                fit: BoxFit.contain,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(child: Center(child: Text(flowerItem.name,textAlign: TextAlign.center,style: GoogleFonts.mukta(textStyle: TextStyle(color: Colors.black,fontSize: 14,)),))),
            Expanded(child: Center(child: Text(flowerItem.price,textAlign: TextAlign.center,style: GoogleFonts.mukta(textStyle: TextStyle(color: Colors.green,fontSize: 14,))))),
          ],
        ),
      ),
    );
  }
  void openDetail(Flower flower,BuildContext context){
    print('detail');
    // Navigator.pushNamed(context, '/detail/$flower');
    Navigator.push(context, MaterialPageRoute(builder: (context)=>FlowerDetail(item:flower)));
  }
}
