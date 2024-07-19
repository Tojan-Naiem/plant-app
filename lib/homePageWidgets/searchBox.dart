import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 55,
                      margin: const EdgeInsets.only(top: 220,left: 30,right: 30),
                      
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                       boxShadow: [
                       BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color:  Color(0xFF0C9869).withOpacity(0.5),
                       )
                       ]
                      ),
                      child:const Padding(

                        padding:  EdgeInsets.only(left:7,top: 5),
                        child:    TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search,color: Color.fromRGBO(151, 154, 157, 1) ,),
          hintText: '   Search',
          suffixStyle: TextStyle(color: Colors.black),
          
          hintStyle: TextStyle(
            color:  Color.fromRGBO(151, 154, 157, 1),
            fontWeight: FontWeight.normal,
            
          )
        ),
        autofocus: true,
        style:  TextStyle(color: Colors.black),
        textAlign: TextAlign.justify,
        )
                      )
                      
                     
                    );
  }
}