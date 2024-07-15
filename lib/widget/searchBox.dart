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
                      child:const  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('Search',style: TextStyle(fontSize: 15,color: Colors.grey),),
                             ),
                             Padding(
                              padding:  EdgeInsets.only(right: 20),
                              child: Icon(Icons.search,color: Colors.grey,),
                              )
                        ],
                      ),
                    );
  }
}