import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'fotoexito.dart';

class Canales extends StatefulWidget {
  @override
  _CanalesState createState() => _CanalesState();
}

class _CanalesState extends State<Canales> {
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
        backgroundColor: Color(0xff005CB4),
        title: Text("PEPSICO"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: MiTexto(
                    cadena: "Nivel 1 : Canales", colorx: Color(0xff005CB4))),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Minisuper",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Grandes",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Chicos",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Estanquillos",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Cover(
                    name: "TRADITIONAL TRADE",
                    color: Colors.blue,
                  ),
                ],
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Express",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Conveniencia",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Farmacias",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Gasolineras",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (def) {
                                    print("dvd");
                                  }),
                              Text(
                                "Cerve-Centros",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Cover(
                    name: "PROXIMITY",
                    color: Colors.blueAccent,
                  ),
                ],
              )
              // name: "PROXIMITY",
              // colorx: Colors.blueAccent,
              // colortext: Colors.white),
              ),
          Align(
              alignment: Alignment.centerLeft,
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextField(),
                ),
                Cover(
                  name: "LARGE FORMATS",
                  color: Colors.blueAccent[100],
                ),
              ])
              // name: "LARGE FORMATS",
              // colorx: Colors.blueAccent[100],
              // colortext: Colors.white),
              ),
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(),
              ),
              Cover(
                name: "CASH & CARRY / CLUBES",
                color: Colors.lightGreenAccent,
              ),
            ]),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "Eating & \ndrinking",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "Recreation \n& Travel",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "Workplace \n& Education",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "To \nGo",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Cover(
                name: "AWAY FROM HOME",
                color: Colors.yellow,
              ),
            ]),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "E-grocery",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "Concierge",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "Pureplay",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "B2C",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Checkbox(
                              value: true,
                              onChanged: (def) {
                                print("dvd");
                              }),
                          Text(
                            "B2B",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Cover(
                name: "E-COMMERCE",
                color: Colors.red,
              ),
            ]),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Checkbox(
                                value: true,
                                onChanged: (def) {
                                  print("dvd");
                                }),
                            Text(
                              "Distribuidores",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Checkbox(
                                value: true,
                                onChanged: (def) {
                                  print("dvd");
                                }),
                            Text(
                              "Gobierno",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Checkbox(
                                value: true,
                                onChanged: (def) {
                                  print("dvd");
                                }),
                            Text(
                              "3PDs",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Cover(
                  name: "DSITRUBUTORS/WHSL",
                  color: Colors.purple,
                ),
              ],
              //              Cover(
              //   name: "DSITRUBUTORS/WHSL",
              //   color: Colors.purple,
              // ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 40, right: 40),
            child: MaterialButton(
                height: 50,
                child: MiTexto(cadena: "Continuar", colorx: Colors.white),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue)),
                color: Color(0xff005CB4),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FotoExito()),
                  );
                  print("ada");
                }),
          )
        ],
      ),
    );
  }
}

class Cover extends StatefulWidget {
  Cover({this.name, this.color});
  final String name;
  final Color color;
  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> {
  Widget MiTexto({String cadena, Color colorx}) {
    return Text(
      cadena,
      style:
          TextStyle(color: colorx == null ? Colors.blue : colorx, fontSize: 24),
    );
  }

  // properties
  // when the user taps a FloatingActionButton.
  double _width = 400;
  double _height = 65;
  Color _color = Colors.green;
  double _visivility = 1;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  TextEditingController texto = new TextEditingController(text: "");
  bool visible = true;
  bool control = true;
  @override
  Widget build(BuildContext context) {
    this.texto.text = widget.name;
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, left: 8, right: 8),
      child: InkWell(
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        onTap: () {
          setState(() {
            if (this.control) {
              final random = Random();
              // Generate a random width and height.
              // _width = random.nextInt(300).toDouble();
              _width = 30;
              this.texto.text = "";
              this.visible = false;
              this._visivility = 0;
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
              this.control = false;
            } else {
              this._visivility = 1;
              final random = Random();
              // Generate a random width and height.
              // _width = random.nextInt(300).toDouble();
              _width = 400;
              // this.texto.text = "";
              this.visible = true;
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
              this.control = true;
            }
          });
          print("ameee");
        },
        child: AnimatedContainer(
          // Use the properties stored in the State class.
          width: _width,
          height: _height,
          // height: 50,
          child: Visibility(
            visible: true,
            child: Center(
                child: Opacity(
                  opacity: this._visivility,
                                  child: Text(
              widget.name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
                )),
          ),
          decoration: BoxDecoration(
              color: widget.color, borderRadius: BorderRadius.circular(15)),
          // Define how long the animation should take.
          duration: Duration(seconds: 1),
          // Provide an optional curve to make the animation feel smoother.
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }
}
