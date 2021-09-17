import 'dart:collection';

import 'package:florist_shop/model/flower.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowerList extends ChangeNotifier {
  List<Flower> flowerItems = [
    Flower(
        isAddedToWishList: false,
        name: 'A Little Pink Me Up',
        img: 'https://assets.eflorist.com/assets/products/PHR_/T10-3A.jpg',
        price: '\$80.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Fiery Lily & Rose',
        img: 'https://assets.eflorist.com/assets/products/PHR_/T47-2A.jpg',
        price: '\$65.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Bountiful Rose Basket',
        img: 'https://assets.eflorist.com/assets/products/PHR_/T233-1A.jpg',
        price: '\$200.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Rosy Glow Bouquet',
        img: 'https://assets.eflorist.com/assets/products/PHR_/T70-1A.jpg',
        price: '\$80.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Forever Beloved',
        img: 'https://assets.eflorist.com/assets/products/PHR_/T255-4A.jpg',
        price: '\$170.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Teleflora\'s tropical Bliss',
        img: 'https://assets.eflorist.com/assets/products/PHR_/T85-1A.jpg',
        price: '\$125.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Golden Boquet',
        img: 'https://assets.eflorist.com/assets/products/PHR_/TEV32-1A.jpg',
        price: '\$70.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Secret Oasis',
        img: 'https://assets.eflorist.com/assets/products/PHR_/TEV12-1A.jpg',
        price: '\$100.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Heart\'s Pirouette Bouquet',
        img: 'https://assets.eflorist.com/assets/products/PHR_/TEV55-1A.jpg',
        price: '\$180.00'),
    Flower(
        isAddedToWishList: false,
        name: 'Indulge Her Bouquet',
        img: 'https://assets.eflorist.com/assets/products/PHR_/T11M200A.jpg',
        price: '\$160.00'),
  ];

  List<Flower> wishListItems = [];

  void addToWishList(int index) {
   Flower flowerItem = flowerItems.elementAt(index);
    flowerItem.isAddedToWishList =
        !flowerItem.isAddedToWishList;
   flowerItem.isAddedToWishList ? addItem(flowerItem) : removeItem(flowerItem);
    notifyListeners();

  }



  void addItem(Flower obj){
    wishListItems.add(obj);
  }
  void removeItem(Flower obj){
    wishListItems.remove(obj);
  }
}
