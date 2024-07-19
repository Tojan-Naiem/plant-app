import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
   IconCard(this.icon,{super.key});
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow:  [
                       BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 50,
                        color:  Color(0xFF0C9869).withOpacity(0.3),
                       )
                       ]
      ),
      child: icon,
    );
  }
}