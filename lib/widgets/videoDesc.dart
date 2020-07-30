import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 90.0,
      padding: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '@aashaykapoor',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Tiktok UI Dev by Me'),
          Text('#TikTokClone #aashaykapoor #flutter'),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                size: 15.0,
                color: Colors.white,
              ),
              Text(
                'Artist Name & Song',
                style: TextStyle(fontSize: 12.0),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
