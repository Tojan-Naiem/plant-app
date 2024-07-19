import 'package:flutter/material.dart';

class CardFeatured extends StatefulWidget {
  CardFeatured({ this.title,this.image,this.price,this.country,super.key});
  String? title;
  String? image;
  String? price;
  String? country;

  @override
  State<CardFeatured> createState() => _CardFeaturedState();
}

class _CardFeaturedState extends State<CardFeatured> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
     child: Padding(padding: EdgeInsets.all(25),

      child: Container(
        height: 290,
        width: 240,
       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
           boxShadow: [ 
                       BoxShadow(

                        offset: Offset(0,10),
                        blurRadius: 50,
                        color:  Color(0xFF0C9869).withOpacity(0.5),
                       )
                       ]
         
        ),
      )
     )
     );
  }
}