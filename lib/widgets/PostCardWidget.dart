
import 'package:flutter/material.dart';
import 'package:ins_flutter/models/model.dart';
import 'package:ins_flutter/views/PostPageView.dart';

import 'AvadarWidget.dart';

class PostCardWidget extends StatelessWidget {
  final Post post;

  PostCardWidget({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      height: 550,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          ListTile(contentPadding: EdgeInsets.symmetric(horizontal: 10),
            leading: AvatarWidget(imageUrl: post.userImageUrl,),
            title: Text(
              post.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(post.time),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PostPageView(post: post,)));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(post.imageUrl),
                      fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(2, 2),
                        blurRadius: 5)
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      "3,666",
                      style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.chat,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      "288",
                      style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
