import 'package:flutter/material.dart';
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

        children: [ 

          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              IconButton(onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=>
                HomePage()));

              }
              ,
              icon: Icon(Icons.arrow_back,color: Colors.black,)),
              Container( 
                width:size.width*0.75,
                height: size.height*0.8,
                decoration: BoxDecoration( 
                   boxShadow: [
                       BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color:  Color(0xFF0C9869).withOpacity(0.5),
                       )
                       ],
                  image: DecorationImage(image: AssetImage(widget.image!),fit: BoxFit.cover,alignment: Alignment.center),
                  borderRadius:const BorderRadius.only( 
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )
                ),
                child: Column(

                  children: [ 
                    Align( 
                      alignment: Alignment.topRight,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.menu_rounded,color: Colors.black,))

                    ),

                  ],
                ),
              ),
             

            ],
          )
        ],
      ),


    );
  }
}