import 'package:florist_shop/model/flower.dart';
import 'package:florist_shop/providers/flower_list.dart';
import 'package:florist_shop/widgets/flowerlistitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var flowerItems = context.watch<FlowerList>().flowerItems;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome',style: GoogleFonts.mukta(),),
        centerTitle: true,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Center(
            child: Text(
              'Florist Shop',
              style: GoogleFonts.dancingScript(
                  textStyle: TextStyle(fontSize: 20, color: Colors.green)),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => onWishListTap(context), icon: Icon(Icons.favorite))
        ],
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: flowerItems.length,
            itemBuilder: (BuildContext context, int index) {
              return FlowerListItem(flowerItem: flowerItems[index],addToWishList: ()=>addToWishList(index, context),);

            }),
      ),
    );
  }


 void onWishListTap(BuildContext context) {
    Navigator.pushNamed(context, '/wishlist');
 }
  void addToWishList(int index,BuildContext context){
    context.read<FlowerList>().addToWishList(index);
  }
}

