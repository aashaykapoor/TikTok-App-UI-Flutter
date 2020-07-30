import 'package:flutter/material.dart';
import 'package:tiktokAppUI/constants.dart';
import 'package:tiktokAppUI/tiktokIcons.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ActionToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,

      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getFollowAction(),
        _getSocialAction(icon: TikTokIcons.heart, title: '3.2m'),
        _getSocialAction(icon: TikTokIcons.chat_bubble, title: "16.4k"),
        _getSocialAction(icon: TikTokIcons.reply, title: 'Share',isShare: true),
        _getMusicPlayerAction()
      ]
          // List<Widget>.generate(5, (_) => Container(
          //   width: 60,height: 60,
          //   color: Colors.blue[300],
          //   margin: EdgeInsets.only(top: 20.0),
          // )),
          ),
    );
  }

  Widget _getFollowAction(){
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Stack(children: <Widget>[
        _getProfilePicture(),
        _getPlusIcon(),
      ],),
    );
  }

  Widget _getPlusIcon(){
    return Positioned(
      bottom: 0,
      left: (ActionWidgetSize/2)-(PlusIconSize/2),
      child: Container(
        width: PlusIconSize,
        height: PlusIconSize,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 43, 84),
          borderRadius: BorderRadius.circular(15.0),
          
        ),
        child: Icon(Icons.add,color: Colors.white,size: 20.0,),
      ),
    );
  }
  Widget _getProfilePicture(){
    return Positioned(
      left: (ActionWidgetSize/2)-(ProfileImageSize/2),
      child: Container(
      
      height: ProfileImageSize,
      width: ProfileImageSize,
      decoration: BoxDecoration(
        
        
        borderRadius: BorderRadius.circular(ProfileImageSize/2),
      ),
      child: CachedNetworkImage(
        imageUrl:"https://1.bp.blogspot.com/-gfAfQVYoUHU/XbLujOv4KYI/AAAAAAAAAyM/kS35mp6euMsMaC7jSxcgTe16Oj69Vb9DgCLcBGAsYHQ/s1600/Tik%2BTok%2BDp%2B%25284%2529.jpg",
         placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    ));
  }

LinearGradient get musicGradient=>LinearGradient(colors: [
  Colors.grey[800],
  Colors.grey[900],
  Colors.grey[900],
  Colors.grey[800],
],
stops: [0.0,0.4,0.6,1.0],
begin: Alignment.bottomLeft,
end: Alignment.topRight);

Widget _getMusicPlayerAction(){
  return Container(
  
    height: ActionWidgetSize,
    width: ActionWidgetSize,
    child: Container(
      padding: EdgeInsets.all(11.0),
      height: ProfileImageSize,
      width: ProfileImageSize,
      decoration: BoxDecoration(
        gradient: musicGradient,
        borderRadius: BorderRadius.circular(ProfileImageSize/2),
      ),
      child: CachedNetworkImage(imageUrl: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7"),
    ),
  );
}

  Widget _getSocialAction({String title, IconData icon,bool isShare=false}) {
    return Container(
      margin: EdgeInsets.all(10),
      width:ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: isShare?25.0:ActionIconSize,
            color: Colors.grey[300],
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize:isShare?10.0:12.0),
            ),
          ),
        ],
      ),
    );
  }
}
