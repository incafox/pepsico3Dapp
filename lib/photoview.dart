import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewX extends StatefulWidget {
  @override
  _PhotoViewXState createState() => _PhotoViewXState();
}

class _PhotoViewXState extends State<PhotoViewX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff005CB4),),
      body: Container(
        child: PhotoView(
          imageProvider: NetworkImage(
              "https://static.turbosquid.com/Preview/2014/07/03__19_07_29/CocaCola_01.JPG2b30115b-d4d4-48f0-ac02-7e46de75802cLarger.jpg"),
        ),
      ),
    );
  }
}
