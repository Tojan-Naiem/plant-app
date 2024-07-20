import 'package:flutter/material.dart';
import 'package:plant_app/models/plant.dart';
import 'package:plant_app/homePageWidgets/card.dart';
import 'package:plant_app/homePageWidgets/cardFeatured.dart';
import 'package:plant_app/homePageWidgets/head.dart';
import 'package:plant_app/homePageWidgets/searchBox.dart';
import 'package:plant_app/homePageWidgets/titleTile.dart';

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
                      itemCount: Plant.featuredPlants.length,
                      itemBuilder:(context,index){
                        return CardFeatured(
                         title: Plant.featuredPlants[index].title,
                         image: Plant.featuredPlants[index].image,
                         price: Plant.featuredPlants[index].price,
                         country: Plant.featuredPlants[index].country,

                        ); 
                      }

                    )
                    ),


         
          ],
        )
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration( 
          color: Colors.white
        ),
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [ 
             IconButton(onPressed: (){}, icon: ImageIcon(AssetImage('images/plant.png'),color: Color(0xFF0C9869),size: 30,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: 30,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.person_2_outlined,size: 30,)),
          ],
        ),
      ),
 
    );
  }
}