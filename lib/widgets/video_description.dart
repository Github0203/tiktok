import 'package:flutter/material.dart';

class VideoDescripton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('@firstjonny', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Video title and some other stuff'),
            Row(
              children: [
                Icon(Icons.music_note, size: 15),
                Text('Artist name - Album name - Song', style: TextStyle(fontSize: 12),)
              ]
            )
          ],
        ),
      ),
    );
  }
}