import 'package:flutter/material.dart';
import 'canales.dart';

class Seleccion2 extends StatefulWidget {
  @override
  _Seleccion2State createState() => _Seleccion2State();
}

class _Seleccion2State extends State<Seleccion2> {
  Widget MiTexto({String cadena, Color colorx}) {
    return Text(
      cadena,
      style: TextStyle(
          color: colorx == null ? Color(0xff005CB4) : colorx, fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff005CB4),
          title: Text("PEPSICO"),
          centerTitle: true),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:28.0),
            child: Center(child: MiTexto(cadena: "Seleccione")),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Center(child: MiTexto(cadena:"Tipo de tienda")),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MyStatefulWidget(),
          ),
          Center(child: MiTexto(cadena:"Sucursal")),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MyStatefulWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(68.0),
            child: MaterialButton(
              height: 50,
                child: MiTexto(cadena: "Siguiente", colorx: Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue)),
                color: Color(0xff005CB4),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Canales()),
                  );
                  print("ada");
                }),
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
        // border: BoxBorder(),
        border: Border.all(color: Color(0xff005CB4), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3.5,
            blurRadius: 2.5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton<String>(
          // hint: Text("data"),
          onTap: () {
            print("asdas");
          },
          value: dropdownValue,
          icon: Expanded(
              child: Container(
                  width: 200,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_drop_down_circle,
                        color: Color(0xff005CB4),
                      )))),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Color(0xff005CB4)),
          underline: Container(
            height: 2,
            color: Colors.transparent,
          ),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>[
            'One',
            'Two',
            'Free',
            'Four',
            'five',
            'six',
            'seven',
            'eight',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.only(left: 48.0),
                child: Container(
                    width: 260,
                    color: Colors.transparent,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 20),
                        ))),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
