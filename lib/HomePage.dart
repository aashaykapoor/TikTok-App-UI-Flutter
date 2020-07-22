import 'package:flutter/material.dart';
import 'package:tiktokAppUI/widgets/actions_tool.dart';
import 'package:tiktokAppUI/widgets/bottomTools.dart';
import 'package:tiktokAppUI/widgets/videoDesc.dart';



class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100.0,
        color: Colors.yellow[300],
      );

  Widget get middleSection => Expanded(
          child: Row(
        children: <Widget>[VideoDescription(), ActionToolBar()],
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
         BottomToolBar(),
        ],
      ),
    );
  }
}
//5:29
