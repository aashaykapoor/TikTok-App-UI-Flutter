import 'package:flutter/material.dart';
import 'package:tiktokAppUI/constants.dart';
import 'package:tiktokAppUI/tiktokIcons.dart';

class BottomToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        Icon(TikTokIcons.home,color: Colors.white,size: NavigationIconSize,),
        Icon(TikTokIcons.search,color: Colors.white,size: NavigationIconSize,),
        customCreateIcon,
        Icon(TikTokIcons.messages,color: Colors.white,size: NavigationIconSize,),
        Icon(TikTokIcons.profile,color: Colors.white,size: NavigationIconSize,),
        

      ],
    );
  }

  Widget get customCreateIcon=>Container(
    width: 45.0,
    height: 27.0,
    child: Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10.0),
          width: CreateButtonWidth,
          
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 250, 45, 108),
            borderRadius: BorderRadius.circular(7.0)
          ),
        ),
        Container(
          width: CreateButtonWidth,
           margin: EdgeInsets.only(right: 10.0),
          decoration: BoxDecoration(
             color: Color.fromARGB(255, 32, 211, 234),
            borderRadius: BorderRadius.circular(7.0)
          ),
          
        ),
        Center(
          child: Container(
            height: double.infinity,
            child: Icon(Icons.add),
            width: CreateButtonWidth,
            decoration: BoxDecoration(
               color: Colors.white,
              borderRadius: BorderRadius.circular(7.0)
            ),),
        )
        
      ],
    ),
  );


}
