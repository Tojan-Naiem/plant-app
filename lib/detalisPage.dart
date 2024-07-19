import 'package:flutter/material.dart';
import 'package:plant_app/detalisPageWidgets/body.dart';

class DetalisPage extends StatelessWidget {
   DetalisPage( this.title,this.image,this.price,this.country,{super.key});
  String? title;
  String? image;
  String? price;
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(
        title: title,
        image: image,
        price: price,
        country: country,
      ),
      

    );
  }
}