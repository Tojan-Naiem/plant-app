import 'package:flutter/material.dart';
import 'package:plant_app/detalisPageWidgets/edgeColumn.dart';
import 'package:plant_app/detalisPageWidgets/iconCard.dart';
import 'package:plant_app/detalisPageWidgets/image.dart';
import 'package:plant_app/homePage.dart';

class Body extends StatefulWidget {
  Body({ this.title,this.image,this.price,this.country,super.key});
   String? title;
  String? image;
  String? price;
  String? country;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
             

  @override
  Widget build(BuildContext context) {
       Size size=MediaQuery.of(context).size;
    return SingleChildScrollView( 
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [ 

          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
               EdgeColumn(),
               ImageSection(image: widget.image!,),
    

            ],
          ),
          const SizedBox(height: 20,),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding:  EdgeInsets.only(left: 15),
              child: Text(widget.title!,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Padding(padding:  EdgeInsets.only(right: 15),
              child: Text('\$'+widget.price!,style: TextStyle(color: Color(0xFF0C9869),fontSize: 25,fontWeight: FontWeight.normal),),
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.only(top: 5,left: 20),
          child: Text(widget.country!,style: TextStyle(color: Color(0xFF0C9869).withOpacity(0.5),fontSize: 23,fontWeight: FontWeight.w400 ),),
          ),
          Row( 
            children: [ 
    GestureDetector( 
            onTap: (){},
            child:Align(
              alignment: Alignment.bottomLeft,
              child:   Container( 
                margin: const EdgeInsets.only(top: 15),
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                color: Color(0xFF0C9869),
                borderRadius: BorderRadius.only(topRight: Radius.circular(20))
              ),
              child: Align( 
                alignment: Alignment.center,
                child:Text('Buy now',style: TextStyle(color: Colors.white,fontSize: 17),),

              )
            ),
            )
           
          ),
              GestureDetector( 
            onTap: (){},
            child:Align(
              alignment: Alignment.bottomRight,
              child:   Container( 
                margin: const EdgeInsets.only(top: 15),
              height: 70,
              width: 211,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
              ),
              child: Align( 
                alignment: Alignment.center,
                child:Text('Buy now',style: TextStyle(color: Colors.black,fontSize: 17),),

              )
            ),
            )
           
          )

        

              
            ],
          )

      


        ],
      ),


    );
  }
}