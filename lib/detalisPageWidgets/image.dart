import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
   ImageSection({this.image,super.key});
    String? image;


  @override
  Widget build(BuildContext context) {
           Size size=MediaQuery.of(context).size;

    return  Container( 
                width:size.width*0.75,
                height: size.height*0.8,
                decoration: BoxDecoration( 
                   boxShadow: [
                       BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color:  Color(0xFF0C9869).withOpacity(0.35),
                       )
                       ],
                  image: DecorationImage(image: AssetImage(image!),fit: BoxFit.cover,alignment: Alignment.center),
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
              );
  }
}