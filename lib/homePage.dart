import 'package:flutter/material.dart';
import 'package:plant_app/widget/searchBox.dart';
import 'package:plant_app/widget/titleTile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
          Size size=MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
    
       body: SingleChildScrollView(
        child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,   
          children: [
            Container(
      margin: EdgeInsets.only(bottom: 20 * 2.5),
      // It will cover 20% of our total height
      height: size.height *0.35,
            child: Stack(
              children: [
                  Container(
                    height: 250,
                    width: 500,
                    decoration:const BoxDecoration(
                      color: Color(0xFF0C9869),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30,),
                          IconButton(onPressed: (){}, icon:Icon(Icons.menu,color: Colors.white,)),
                          const SizedBox(height: 50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child:Text('Hi Tojan!',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding:const EdgeInsets.only(right: 15),
                                child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white
                                ),
                              )
                                
                                
                                ,
                                 )

                              
                            ],
                          )

                        
                      ],
                    ),
                  ),
                  const Positioned(
                    child: SearchBox(),
                    
                    ),
                   
              ],
            ),
            
          ),
          TitleTile('Recomended')
         
          ],
        )
      ),
 
    );
  }
}