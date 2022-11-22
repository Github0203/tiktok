import 'package:flutter/material.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100.0,
        color: Colors.yellow[300],
      );

  Widget get videoDescription => Expanded( child: Column(
     mainAxisSize: MainAxisSize.min,
    children: <Widget>[
        Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top: 10),),
        Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top: 10),),
        Container(height: 10.0, color: Colors.green[300], margin: EdgeInsets.only(top: 10),)
    ],
  ),
          );

    Widget get actionToolbar => Container(
    width: 100.0,
    color: Colors.red[300],
    child: Column(
    mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(5, (_) => Container(
        width: 60, height: 60,
        color: Colors.blue[300],
        margin: EdgeInsets.only(top: 20.0)),
      ))
    );
  

  Widget get middleSection => Expanded( child: Row(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[videoDescription, actionToolbar],
  )
          );  

  Widget get bottomSection => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List<Widget>.generate(5, (index) => Container(
      width: 40.0, height: 40.0,
      color: Colors.purple[300],
    )),
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
          bottomSection,
        ],
      ),
    ));
  }
}
