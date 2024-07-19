import 'package:flutter/material.dart';
import 'package:plant_app/detalisPageWidgets/iconCard.dart';
import 'package:plant_app/homePage.dart';

class EdgeColumn extends StatelessWidget {
  const EdgeColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ 

                   IconButton(onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=>
                HomePage()));

              }
              ,
              icon: Icon(Icons.arrow_back,color: Colors.black,)),
             const SizedBox(height: 120,),

              Padding(
                
                padding:const EdgeInsets.only(left: 15),
                child: IconCard(Icon(Icons.sunny,color: Color(0xFF0C9869),))

                
                 ),
                              const SizedBox(height: 50,),

                  Padding(
                
                padding:const EdgeInsets.only(left: 15),
                child: IconCard(Icon(Icons.water_drop_rounded,color: Color(0xFF0C9869),))

                
                 ),
                               const SizedBox(height: 50,),

                  Padding(
                
                padding:const EdgeInsets.only(left: 15),
                child: IconCard(Icon(Icons.wind_power,color: Color(0xFF0C9869),))

                
                 ),
                             const SizedBox(height: 50,),

                  Padding(
                
                padding:const EdgeInsets.only(left: 15),
                child: IconCard(Icon(Icons.science,color: Color(0xFF0C9869),))

                
                 ),
               





                ],
              );
             
  }
}