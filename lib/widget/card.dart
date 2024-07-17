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
        height: 290,
        width: 150,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Container(
              
              height: 170,
              width: 150,
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
                Padding(padding: const EdgeInsets.only(left:7,top: 4),
                child:RichText(
                  text: TextSpan(
                    children: [ 
                      TextSpan(
                        text: widget.title!.toUpperCase(),
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 12
                        ))
                    ]
                  )
                  )
                
                //  Text(widget.title!.toUpperCase(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 12),),
                ),
                Padding(padding: const EdgeInsets.only(right: 10,top: 4),
                
                child:Text('\$'+widget.price!,style: TextStyle(color: Color(0xFF0C9869)),)

                )
              ],
             ),
             Padding(

              padding: const EdgeInsets.only(left: 7),
             
             child: Text(widget.country!,style: TextStyle(color: Color(0xFF0C9869).withOpacity(0.5),fontWeight: FontWeight.normal),),
             )
             
          ],
        ),

      ),
     )
      
    );
  }
}