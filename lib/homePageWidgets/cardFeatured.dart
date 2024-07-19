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
     child: Padding(padding: EdgeInsets.all(15),

      child: Container(
        height: 290,
        width: 270,
       decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Colors.white,
           boxShadow: [ 
                        BoxShadow(
                 color: Color(0xFF0C9869).withOpacity(0.2), 
                  spreadRadius: 5, 
                  blurRadius: 7, 
                  offset:const Offset(0, 3), 
                       )
                       ]
         
        ),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Container(
              
              height: 170,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(17),topRight: Radius.circular(17)),
                image: DecorationImage(
                  image: AssetImage(widget.image!),
                  fit: BoxFit.cover
                  )
              ),
             ),
             Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                Padding(padding: const EdgeInsets.only(left:7,top: 10),
                child:RichText(
                  text: TextSpan(
                    children: [ 
                      TextSpan(
                        text: widget.title!.toUpperCase(),
                        style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15
                        ))
                    ]
                  )
                  )
                
                ),
                 Padding(padding: const EdgeInsets.only(right: 10,top: 10),
                
                child:Text('\$'+widget.price!,style: TextStyle(color: Color(0xFF0C9869)),)

                )
              ]
             ),
               Padding(

              padding: const EdgeInsets.only(left: 7),
             
             child: Text(widget.country!,style: TextStyle(color: Color(0xFF0C9869).withOpacity(0.5),fontWeight: FontWeight.normal),),
             ),
          ]

         )
      )
     )
     );
  }
}