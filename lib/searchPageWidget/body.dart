import 'package:flutter/material.dart';
import 'package:plant_app/searchPageWidget/name.dart';
import 'package:plant_app/searchPageWidget/searchBox.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int x=1;

  List list=[ 
    ['Water',false],
    ['Size',true],
    ['Diffecultly',false],
    ['Light',false]
  ];
  void _setSelectedItem(int index){

    setState(() {
      for(int i=0;i<list.length;i++){
        list[i][1]=false;
      }list[index][1]=true;
      // valueSlider=
    });
    
  }
double valueSlider=20;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView( 
    child: Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding:  EdgeInsets.only(top: size.height*0.12,left: 30),
        
        child:SearchBox(),
        

        ),
        Padding(padding: const EdgeInsets.only(top: 20,right: 20,left:10),
        child: Container(
          height: 19,
          width: double.infinity,
          child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) {
              return NameSelect( 
                name: list[index][0],
                isSelected: list[index][1],

                onTap: (){
                  _setSelectedItem(index);
                },
              );
            },
             ),
        ),
        ),
        Padding(padding: const EdgeInsets.only(left: 25,right: 25),
        
        child:SliderTheme(
      data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.grey, // Hide the active (moving) line
        inactiveTrackColor: Colors.grey, // Keep the inactive (fixed) line visible
        thumbColor: Colors.black, // Color of the thumb
        overlayColor: Colors.black.withOpacity(0.2), // Color of the thumb overlay
        trackHeight: 1.0,
      
      
      ),
      child: Slider(
        value: valueSlider,
        max: 6,
        divisions: 3,
        min: 1,
        onChanged: (double value) {
        
        
        }
      )
        ))
      ],
    ),
    );
  }
}