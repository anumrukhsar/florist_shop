import 'package:florist_shop/model/flower.dart';
import 'package:florist_shop/providers/flower_list.dart';
import 'package:florist_shop/widgets/wishlistitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wishlistItems = context.watch<FlowerList>().wishListItems;

    return Scaffold(
        appBar: AppBar(title: Text('WishList',style:GoogleFonts.mukta() ,),centerTitle: true,),
        body:
       wishlistItems.length==0?buildNoDataFoundWidget():builWishListItemWidget(context),
       );
  }

  Widget buildNoDataFoundWidget(){
    return Center(child: Text('No Wishlist item found'));
  }

  Widget builWishListItemWidget(BuildContext context){
    var wishlistItems = context.watch<FlowerList>().wishListItems;

    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount:wishlistItems.length , itemBuilder: (BuildContext context, int index) {
        return WishListItem(flower: wishlistItems[index],);
      }),
    );
  }
}

