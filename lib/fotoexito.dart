import 'package:flutter/material.dart';
import 'mapa2d.dart';
import 'mapa3d.dart';
import 'estandarejecucion.dart';

class FotoExito extends StatefulWidget {
  @override
  _FotoExitoState createState() => _FotoExitoState();
}

class _FotoExitoState extends State<FotoExito> {
  Widget MiTexto({String cadena, Color colorx}) {
    return Text(
      cadena,
      style:
          TextStyle(color: colorx == null ? Colors.blue : colorx, fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Color(0xff005CB4),
        title: Text("PEPSICO"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(top:18.0,bottom: 40),
            child: Column(
              children: [
                Text(
                  "Foto de",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                Text(
                  "Exito",
                  style: TextStyle(color: Colors.white, fontSize: 85),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                  height: 50,
                  child: MiTexto(
                      cadena: "Estandar de Ejecucion", colorx: Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.blue[400])),
                  color: Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EstandarEjecucion()),
                    );
                    print("ada");
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: MaterialButton(
                  height: 50,
                  child: MiTexto(cadena: "Mapa 2D", colorx: Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.blue[400])),
                  color:Colors.blueAccent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mapa2D()),
                    );
                    print("ada");
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
                height: 60,
                child: MiTexto(cadena: "Mapa 3D", colorx: Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue[400])),
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mapa3D()),
                  );
                  print("ada");
                }),
          )
        ],
      ),
    );
  }
}
