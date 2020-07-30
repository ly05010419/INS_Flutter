import 'package:flutter/material.dart';
import 'package:ins_flutter/models/model.dart';
import 'package:ins_flutter/widgets/AvadarWidget.dart';

import '../widgets/PostCardWidget.dart';

class PostPageView extends StatefulWidget {
  final Post post;
  PostPageView({@required this.post});

  @override
  _PostPageViewState createState() => _PostPageViewState();
}

class _PostPageViewState extends State<PostPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Color(0xFFEDF0F6),
        title: Text(
          widget.post.name,
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
      body: ListView(
        children: <Widget>[
          PostCardWidget(post: widget.post),
          createComment(widget.post)
        ],
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0,-1*MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            boxShadow: [BoxShadow(color: Colors.black26,blurRadius: 5)]
          ),
          child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey)),
                  hintText: "Add a comment",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: AvatarWidget(
                      imageUrl: widget.post.userImageUrl,
                    ),
                  ),
              suffixIcon: IconButton(icon: Icon(Icons.send,color: Colors.blue,),onPressed: (){
                print("Send");
              },))),
        ),
      ),
    );
  }

  Widget createComment(Post post) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: comments.map((e) => createCommentItem(e)).toList(),
      ),
    );
  }

  Widget createCommentItem(Comment comment) {
    return ListTile(
      leading: AvatarWidget(
        imageUrl: comment.authorImageUrl,
      ),
      title: Text(
        comment.authorName,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(comment.text),
      trailing: IconButton(
        icon: Icon(
          Icons.favorite_border,
          size: 26,
        ),
        onPressed: () {},
      ),
    );
  }
}
