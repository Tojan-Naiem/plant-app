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
      height: 50,
      width: 200,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey
      ),
      child: TextField( 
        decoration: InputDecoration( 
          border: InputBorder.none,
          hintText: 'Search',
          suffixIcon: Icon(Icons.search,color: Colors.grey,)
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}