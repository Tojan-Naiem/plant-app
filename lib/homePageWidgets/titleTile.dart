import 'package:flutter/material.dart';

class TitleTile extends StatelessWidget {
 TitleTile(this.title,{super.key});
  String title;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
           child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                        ElevatedButton(onPressed: (){
                        
                        }, child: Text('More',style: TextStyle(color: Colors.white),
                        
                         ),
                         style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0C9869),
                         ),
                         )
                      ],
                    )
          );
  }
}