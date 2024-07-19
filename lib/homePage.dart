import 'package:flutter/material.dart';
import 'package:plant_app/models/plant.dart';
import 'package:plant_app/widget/card.dart';
import 'package:plant_app/widget/cardFeatured.dart';
import 'package:plant_app/widget/head.dart';
import 'package:plant_app/widget/searchBox.dart';
import 'package:plant_app/widget/titleTile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
    
       body: SingleChildScrollView(
        child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,   
          children: [
            Head(),
         
          TitleTile('Recomended'),
           Container(
                      height: 290,
                      width: double.infinity,
         
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                      itemCount: Plant.plants.length,
                      itemBuilder:(context,index){
                        return CardPlant(
                         title: Plant.plants[index].title,
                         image: Plant.plants[index].image,
                         price: Plant.plants[index].price,
                         country: Plant.plants[index].country,

                        ); 
                      }

                    )
                    ),
                              TitleTile('Featured Plant'),
                               Container(
                      height: 290,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                      itemCount: Plant.plants.length,
                      itemBuilder:(context,index){
                        return CardFeatured(
                         title: Plant.plants[index].title,
                         image: Plant.plants[index].image,
                         price: Plant.plants[index].price,
                         country: Plant.plants[index].country,

                        ); 
                      }

                    )
                    ),


         
          ],
        )
      ),
 
    );
  }
}