// import 'dart:html';

import 'package:flutter/material.dart';
import 'seleccion1.dart';
import 'package:flag/flag.dart';

class Bienvenido extends StatefulWidget {
  @override
  _BienvenidoState createState() => _BienvenidoState();
}

class _BienvenidoState extends State<Bienvenido> {
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
      appBar: AppBar(
        centerTitle: true,
        title: Text("PEPSICO"),
        backgroundColor: Color(0xff005CB4),
      ),
      body: Center(
        child: ListView(
          children: [
            Divider(
              color: Colors.transparent,
              height: 50,
            ),
            Center(
                child: MiTexto(
                    cadena: "Bienvenido".toUpperCase(),
                    colorx: Color(0xff005CB4))),
            Divider(
              color: Colors.transparent,

            ),
            CircleAvatar(
              child: CircleAvatar(
                radius: 95,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/originals/23/e4/e7/23e4e7aa8e7a9e2dbc75fece9d77fc99.jpg"),
              ),
              radius: 100,
              backgroundColor: Color(0xff005CB4),
            ),
            Divider(
              color: Colors.transparent,

            ),
            Center(
                child: MiTexto(
                    cadena: "Fernando Coronado Corona".toUpperCase(),
                    colorx: Color(0xff005CB4))),
            Divider(
              color: Colors.transparent,

            ),
            Center(
                child: MiTexto(
                    cadena: "Pais-Ventas".toUpperCase(),
                    colorx: Color(0xff005CB4))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Flag(
                'AD',
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: MaterialButton(
                  height: 60,
                  child: MiTexto(
                      cadena: "Continuar".toUpperCase(), colorx: Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                      side: BorderSide(color: Colors.blue)),
                  color: Color(0xff005CB4),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Seleccion1()),
                    );
                    print("ada");
                  }),
            )
          ],
        ),
      ),
    );
  }
}
