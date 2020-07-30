import 'package:flutter/material.dart';
import 'package:tiktokAppUI/widgets/actions_tool.dart';
import 'package:tiktokAppUI/widgets/bottomTools.dart';
import 'package:tiktokAppUI/widgets/videoDesc.dart';

class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text('Following'),
            Container(
              width: 15.0,
            ),
            Text(
              "For you",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );

  Widget get middleSection => Expanded(
   
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[VideoDescription(), ActionToolBar()],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          // Top Section
          topSection,
          // Middle Section
          middleSection,
          // Bottom Section
          BottomToolBar(),
        ],
      ),
    );
  }
}
//5:29
