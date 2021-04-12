import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Paper Clips",
      price: 10,
      description: dummyText,
      image: "assets/images/pineapple.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Sticky Notes",
      price: 5,
      description: dummyText,
      image: "assets/images/postit.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Notepad",
      price: 7,
      description: dummyText,
      image: "assets/images/notepad.jpg",
      color: Color(0xFF989493)),
  Product(
    id: 4,
    title: "Pens",
    price: 5,
    description: dummyText,
    image: "assets/images/pens.jpg",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText = "hello, i am dummy text";
