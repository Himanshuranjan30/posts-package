library posts;

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  double height;
  double width;
  String imageurl;
  bool isNetworkImage = false;
  Function onLiketap;
  Function onCommenttap;
  Function onSharetap;

  Post(this.height, this.width, this.imageurl, this.isNetworkImage,
      this.onLiketap, this.onCommenttap, this.onSharetap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: Column(children: [
        isNetworkImage
            ? Container(
                child: Image.network(
                imageurl,
              ))
            : Image.asset(imageurl),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(child: Icon(Icons.thumb_up), onTap: onLiketap),
            InkWell(
              child: Icon(Icons.comment),
              onTap: onCommenttap,
            ),
            InkWell(
              child: Icon(Icons.share),
              onTap: onSharetap,
            )
          ],
        ),
        Divider(),
      ]),
    );
  }
}
