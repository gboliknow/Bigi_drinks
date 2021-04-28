import 'package:flutter/material.dart';
import 'model/drink_model.dart';

List<Drink> _DrinkList = [
  Drink(
    name: "Bigi cola",
    image: "assets/images/5.png",
    backgroundColor: Colors.grey[700],
    price: 120,
    width: 300,
  ),
  Drink(
    name: "Bigi  Tamarind",
    image: "assets/images/7.png",
    backgroundColor: Colors.brown,
    price: 120,
    width: 300,
  ),
  Drink(
    name: "Bigi Orange",
    image: "assets/images/4.png",
    backgroundColor: Colors.orangeAccent[700],
    price: 120,
    width: 300,
  ),
  Drink(
    name: "Bigi Apple",
    image: "assets/images/11.png",
    backgroundColor: Colors.amber,
    price: 120,
    width: 300,
  ),
  Drink(
    name: "Bigi Chapman",
    image: "assets/images/13.png",
    backgroundColor: Colors.deepOrangeAccent[700],
    price: 120,
    width: 300,
  ),
  Drink(
    name: "Bigi Lemon",
    image: "assets/images/16.png",
    backgroundColor: Colors.green[300],
    price: 120,
    width: 600,
  ),
];

List<Drink> get DrinkList {
  return [..._DrinkList];
}
