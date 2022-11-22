import 'package:flutter/material.dart';

import 'package:tik_tok_ui/widgets/actions_toolbar.dart';
import 'package:tik_tok_ui/widgets/button_toolbar.dart';
import 'package:tik_tok_ui/widgets/video_description.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100.0,
        color: Colors.yellow[300],
      );


  

  Widget get middleSection => Expanded( child: Row(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[VideoDescripton(), ActionToolbar()],
  )
          );  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          // Top section
          topSection,

          // Middle section
          middleSection,

          // Bottom section
          BottomToolbar(),
        ],
      ),
    ));
  }
}
