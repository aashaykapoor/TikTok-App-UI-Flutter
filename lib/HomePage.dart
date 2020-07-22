import 'package:flutter/material.dart';
class Home extends StatelessWidget {


  Widget get topSection=> Container(
            height: 100.0,
            color: Colors.yellow[300],
          );
  Widget get bottomSection=>Container(
            height: 80,
            color: Colors.blue,
          );

  Widget get videoDescription=>Expanded(child: Column(
    children: <Widget>[
      Container()
    ],
                color: Colors.green,
              ));
  
  Widget get actionsToolbar=>Container(
                width: 100,
                color: Colors.red,
              );

  Widget get middleSection=>Expanded(child: 
          Row(
            children: <Widget>[
              videoDescription,
              actionsToolbar
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Top Section
         topSection,
          // Middle Section
          middleSection,
          // Bottom Section
          bottomSection,
          
        ],
      ),
      
    );
  }
}