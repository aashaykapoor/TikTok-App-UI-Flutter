import 'package:flutter/material.dart';
class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 10.0,
            color: Colors.green,
            margin: EdgeInsets.only(top: 10),
          ),
          Container(
            height: 10.0,
            color: Colors.green,
            margin: EdgeInsets.only(top: 10),
          ),
          Container(
            height: 10.0,
            color: Colors.green,
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ));
  }
}