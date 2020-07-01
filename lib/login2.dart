import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'bienvenido.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'setClave.dart' as setClave;
import 'provider.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController gpid = TextEditingController();
  @override
  void initState() {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  void log() async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": "lubeck05@gmail.com"});
    response = await dio.post("https://pepsicoapp.com/api/AppMovil/validaGPID",
        data: formData);
    print(response.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProveedorDatos>(context);
    // this.gpid.text = provider.gpid;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005CB4),
      ),
      backgroundColor: Color(0xff005CB4),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height / 3.5,
            //   decoration: BoxDecoration(
            //       boxShadow: [
            //         BoxShadow(color: Colors.blueAccent, blurRadius: 30)
            //       ],
            //       gradient: LinearGradient(
            //         begin: Alignment.topCenter,
            //         end: Alignment.bottomCenter,
            //         colors: [
            //           Color(0xff005CB4),
            //           Color(0xff005CB4),
            //           // Colors.blueAccent,
            //           // Colors.blueAccent,
            //           // Color(0xff3b3eff),
            //           // Color(0xff151eff)
            //         ],
            //       ),
            //       borderRadius: BorderRadius.only(
            //         bottomRight: Radius.circular(100),
            //         // bottomLeft: Radius.circular(30)
            //       )),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       Spacer(),
            //       Align(
            //           alignment: Alignment.center,
            //           child: Text(
            //             'PEPSICO',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.white,
            //                 fontSize: 48),
            //           )

            //           // Icon(Icons.person,
            //           //   size: 90,
            //           //   color: Colors.white,
            //           // ),
            //           ),
            //       Spacer(),
            //       // Align(
            //       //   alignment: Alignment.center,
            //       //   child: Padding(
            //       //     padding: const EdgeInsets.only(bottom: 32, right: 32),
            //       //     child: Text(
            //       //       'PEPSICO',
            //       //       style: TextStyle(color: Colors.white, fontSize: 18),
            //       //     ),
            //       //   ),
            //       // ),
            //     ],
            //   ),
            // ),
            Container(
              height: 180,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 68.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "PEPSICO",
                        style:
                            TextStyle(fontSize: 40, color: Color(0xff005CB4)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Bienvenido",
                        style:
                            TextStyle(fontSize: 22, color: Color(0xff005CB4)),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 50,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextField(
                      onChanged: (value) {
                        this.gpid.text = value;
                        provider.gpid = value;
                      },
                      controller: this.gpid,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.person,
                          color: Color(0xff005CB4),
                          //color: Color(0xff6bceff),
                        ),
                        hintText: 'GPID',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextField(
                      style: TextStyle(fontSize: 18),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.vpn_key,
                          color: Color(0xff005CB4),
                        ),
                        hintText: 'Clave',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, right: 32),
                      child: Text(
                        'Olvidaste la clave ?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: InkWell(
                      onTap: () async {
                        // Navigator.pushNamed(context, '/');
                        provider.gpid = this.gpid.text;
                        //provider.validaGPID();
                        Navigator.push(
                          context,
                          // MaterialPageRoute(builder: (context) => Bienvenido()),
                          MaterialPageRoute(
                              builder: (context) => setClave.LoginPage()),
                        );
                        print("tu vieja");
                        // this.log();
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff005CB4),
                                Color(0xff005CB4),
                                // Color(0xff6bceff),
                                // Color(0xFF00abff),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Text(
                            'Entrar'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Pepsico 2020"),
                  Text(
                    "",
                    style: TextStyle(color: Color(0xff6bceff)),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
          ],
        ),
      ),
    );
  }
}
