import 'package:flutter/material.dart';

class Mapa3D extends StatefulWidget {
  @override
  _Mapa3DState createState() => _Mapa3DState();
}

class _Mapa3DState extends State<Mapa3D> {
  Widget MiTexto({String cadena, Color colorx}) {
    return Text(
      cadena,
      style:
          TextStyle(color: colorx == null ? Colors.blue : colorx, fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
          centerTitle: true,
          title: Text("PEPSICO"),
          backgroundColor: Color(0xff005CB4)),
      body: Column(
        children: [
          Container(
            height: 70,
          ),
          Center(child: MiTexto(cadena: "Planogramas", colorx: Colors.white)),
          Center(
              child:
                  MiTexto(cadena: "CASA/SoCo/Argentina", colorx: Colors.white)),
          Center(
              child: MiTexto(cadena: "Mini Sucursal 1", colorx: Colors.white)),
          Center(
              child: Text(
            "3D",
            style: TextStyle(fontSize: 70,color: Colors.white),
          )),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MaterialButton(
                height: 50,
                child: MiTexto(
                    cadena: "Descargar".toUpperCase(), colorx: Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.blueAccent,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Seleccion2()),
                  // );
                  print("ada");
                }),
          ),
          Center(
              child: MiTexto(cadena: "100%", colorx: Colors.white)),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              height: 10,
              width: double.infinity,
              // color: Colors.blue[100],
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MaterialButton(
                height: 50,
                child: MiTexto(
                    cadena: "Continuar".toUpperCase(), colorx: Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.blueAccent,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Seleccion2()),
                  // );
                  print("ada");
                }),
          ),
        ],
      ),
    );
  }
}
