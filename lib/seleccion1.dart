import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'seleccion2.dart';

class Seleccion1 extends StatefulWidget {
  @override
  _Seleccion1State createState() => _Seleccion1State();
}

class _Seleccion1State extends State<Seleccion1> {
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
        centerTitle: true,
        title: Text("PEPSICO"),
        backgroundColor: Color(0xff005CB4),
      ),
      body: ListView(
        children: [
          // Container(height: 200, child: WeightSelect()),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Center(child: MiTexto(cadena: "Seleccione")),
          ),
          Divider(),
          Center(child: MiTexto(cadena: "C.U. (Comercial Unit)")),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MyStatefulWidget(),
          ),
          Center(child: MiTexto(cadena: "C.O. (Operation Unit)")),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MyStatefulWidget(),
          ),
          Center(child: MiTexto(cadena: "Country")),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: MyStatefulWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: MaterialButton(
                // elevation: 10,
                height: 50,
                child: MiTexto(cadena: "Siguiente", colorx: Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue)),
                color: Color(0xff005CB4),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Seleccion2()),
                  );
                  print("ada");
                }),
          ),
          // Center(child: MyStatefulWidget()),
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

class WeightSelect extends StatefulWidget {
  @override
  _WeightSelectState createState() => _WeightSelectState();
}

class _WeightSelectState extends State<WeightSelect> {
  int selectedValue;

  showPicker() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return CupertinoPicker(
            backgroundColor: Colors.white,
            onSelectedItemChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
            itemExtent: 32.0,
            children: const [
              Text('Item01'),
              Text('Item02'),
              Text('Item03'),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 10.0),
        Text("Selected: $selectedValue"),
        const SizedBox(height: 10.0),
        Center(
          child: RaisedButton(
            onPressed: showPicker,
            child: Text("Show picker"),
          ),
        ),
      ],
    );
  }
}
