import 'package:flutter/material.dart';

class NameSelect extends StatelessWidget {
   NameSelect({this.name,this.isSelected,this.onTap,super.key});
  bool? isSelected;
  String? name;
  VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(padding: const EdgeInsets.only(left: 27,right:27),
      
      child: Container( 
      
        child:  Text( 
           name!,
           style: TextStyle( 
            color: isSelected!?Colors.black:Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w500
           ),
      ),
      
      )
         
      ),
    );
  }
}