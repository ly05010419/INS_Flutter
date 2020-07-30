import 'package:flutter/material.dart';
import 'package:ins_flutter/models/model.dart';
import 'package:ins_flutter/views/PostPageView.dart';
import 'package:ins_flutter/widgets/AvadarWidget.dart';

import '../widgets/PostCardWidget.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      appBar: createAppBar(),
      body: ListView.builder(
          itemCount: posts.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return createHeader();
            } else {
              return PostCardWidget(post: posts[index - 1]);
            }
          }),
    );
  }

  Widget createAppBar() {
    return AppBar(
      elevation: 1,
      backgroundColor: Color(0xFFEDF0F6),
      leading: IconButton(
        icon: Icon(
          Icons.photo_camera,
          color: Colors.black,
          size: 30,
        ),
      ),
      title: Text(
        'Instagram',
        style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.normal),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.send,
            color: Colors.black,
            size: 30,
          ),
        )
      ],
    );
  }

  Widget createHeader() {
    return Container(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding:  index != 0
                  ? EdgeInsets.only(left: 15, top: 10, bottom: 10)
                  : EdgeInsets.only(top: 10, bottom: 10),
              child: AvatarWidget(imageUrl: stories[index],size: 80,),
            );
          }),
    );
  }
}
