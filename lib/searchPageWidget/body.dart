import 'package:flutter/material.dart';
import 'package:plant_app/searchPageWidget/searchBox.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( 
    child: Column( 
      children: [
        Padding(padding: const EdgeInsets.only(top: 20),
        
        child:SearchBox()

        )
      ],
    ),
    );
  }
}