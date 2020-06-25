import 'package:flutter/material.dart';
import 'photoview.dart';

class Mapa2D extends StatefulWidget {
  @override
  _Mapa2DState createState() => _Mapa2DState();
}

class _Mapa2DState extends State<Mapa2D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("PEPSICO"),
          backgroundColor: Color(0xff005CB4),
        ),
        body: Carrusel());
  }
}

class Carrusel extends StatefulWidget {
  @override
  _CarruselState createState() => _CarruselState();
}

class _CarruselState extends State<Carrusel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Expanded(child: Container()),
          // Container(height: 80,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                  "https://i.pinimg.com/originals/bc/23/ac/bc23ac5a246919dbe12c680238a9fd1d.jpg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Center(
                child: Text(
                  "data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              height: 50, width: double.infinity,
              // width: ,
              decoration: BoxDecoration(
                  color: Color(0xff005CB4),
                  borderRadius: BorderRadius.circular(40)),
            ),
          ),
          Container(
            // height: 200,
            height: MediaQuery.of(context).size.width/2,
            child: GridView.count(
              physics: BouncingScrollPhysics(),
              crossAxisCount: 1,
              scrollDirection: Axis.horizontal,
              children: [
                TileImage(),
                TileImage(),
                TileImage(),
                TileImage(),
                TileImage(),
                TileImage(),
                TileImage(),
                TileImage(),
                TileImage(),
                TileImage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TileImage extends StatefulWidget {
  @override
  _TileImageState createState() => _TileImageState();
}

class _TileImageState extends State<TileImage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 20,
        height: 20,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PhotoViewX()),
            );
            print("sdvs");
          },
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                  "https://static.turbosquid.com/Preview/2014/07/03__19_07_29/CocaCola_01.JPG2b30115b-d4d4-48f0-ac02-7e46de75802cLarger.jpg"),
            ),
            height: 20,
            width: 20,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
