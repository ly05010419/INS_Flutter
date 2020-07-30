import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final Offset offset;
  final double blurRadius;
  final String imageUrl;
  final double size;

  AvatarWidget(
      {this.offset = const Offset(2, 2),
      this.blurRadius = 5,
      @required this.imageUrl,
      this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              color: Colors.black45, offset: offset, blurRadius: blurRadius)
        ],
        image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
