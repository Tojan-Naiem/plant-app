import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 320,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 203, 201, 201)
      ),
      child: Align( 
        alignment: Alignment.center,
        child: TextField( 
        decoration: InputDecoration( 
          border: InputBorder.none,
          hintText: 'Search',
          suffixIcon: Icon(Icons.search,color: Colors.grey,)
        ),
        textAlign: TextAlign.center,
      ),
      )
      
    );
  }
}