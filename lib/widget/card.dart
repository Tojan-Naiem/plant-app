import 'package:flutter/material.dart';

class CardPlant extends StatefulWidget {
  CardPlant({ this.title,this.image,this.price,this.country,super.key});
  String? title;
  String? image;
  String? price;
  String? country;

  @override
  State<CardPlant> createState() => _CardPlantState();
}

class _CardPlantState extends State<CardPlant> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
     child: Padding(padding: EdgeInsets.all(25),

      child: Container(
        height: 200,
        width: 200,
       
        child: Column(
          children: [
             
          ],
        ),

      ),
     )
      
    );
  }
}