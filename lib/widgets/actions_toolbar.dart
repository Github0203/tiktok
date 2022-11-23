import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:tik_tok_ui/tik_tok_icons_icons.dart';

class ActionToolbar extends StatelessWidget {
  // Full dismentions of an action
  static const double ActionWidgetSize = 60;

  // The size of the icon showen for Social Actions
  static const double ActionIconSize = 35;

  // The size if the share social icon
  static const double ShareActionIconSize = 25;

  // The size of the plus icon under the profile image in follow action
  static const double PlusIconSize = 20;

  // The size of the plus icon under the profile image in follow action
  static const double ProfileImageSize = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _getFollowAction(),
          _getSocialAction(icon: TikTokIcons.heart, title: '3.2m'),
          _getSocialAction(icon: TikTokIcons.heart, title: '3.2m'),
          _getSocialAction(icon: TikTokIcons.chat_bubble, title: '16.4k'),
          _getSocialAction(
              icon: TikTokIcons.reply, title: 'Share', isShare: true),
          _getMusicPlayerAction(),
        ]));
  }

  Widget _getSocialAction({String title, IconData icon, bool isShare = false}) {
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: [
          Icon(icon,
              size: isShare ? ShareActionIconSize : ActionIconSize,
              color: Colors.grey[300]),
          Padding(
              padding: EdgeInsets.only(top: isShare ? 5 : 2),
              child: Text(title, style: TextStyle(fontSize: isShare ? 10 : 12)))
        ],
      ),
    );
  }

  Widget _getFollowAction() {
    return Container(
      height: ActionWidgetSize,
      width: ActionWidgetSize,
      child: Stack(children: [_getProfilePicture(), _getPlusIcon()]),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
        left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
        child: Container(
          height: ProfileImageSize, // ProfileImageSize = 50
          width: ProfileImageSize,
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.all(Radius.circular(ProfileImageSize / 2))),
          child: CachedNetworkImage(
            imageUrl:
                "https://s.gravatar.com/avatar/0ce8e8cbba34fad1b533e06d77b27570?s=80",
            imageBuilder: (context, imageProvider) => Container(
              height: ProfileImageSize,
              width: ProfileImageSize,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(ProfileImageSize / 2)),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(
              Icons.error,
              color: Colors.black,
            ),
          ),
        ));
  }

  Widget _getPlusIcon() {
    return Positioned(
        bottom: 0,
        left: (ActionWidgetSize / 2) - (PlusIconSize / 2),
        child: Container(
            width: PlusIconSize, // PlusIconSize = 20
            height: PlusIconSize,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 43, 84),
                borderRadius: BorderRadius.circular(15)),
            child: Icon(Icons.add, color: Colors.white, size: 20)));
  }

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800]
      ], stops: [
        0,
        0.4,
        0.6,
        1
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget _getMusicPlayerAction() {
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(11),
            height: ProfileImageSize,
            width: ProfileImageSize,
            decoration: BoxDecoration(
                gradient: musicGradient,
                borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
            child: CachedNetworkImage(
              imageUrl: "",
              placeholder: (context, url) => new CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(
                Icons.error,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
