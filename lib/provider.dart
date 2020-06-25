import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class ProveedorDatos extends ChangeNotifier {
  String _userID = "";
  String _userName = "";
  String _groupID = "";
  String _firstName = "";
  String _lastName = "";
  String _paisID = "";
  String _addedPasword = "";
  String _password = "";
  String _gpid = "";
  String _token = "";
// 1
/* 
{"error":"0","descripcion":"logeado con exito","user_id":"18",
"user_name":"24782358743859","group_id":"0","first_name":"test",
"last_name":"test","pais_id":null,"addedPassword":"0"}
*/
  void validaGPID() async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": "lubeck05@gmail.com"});
    response = await dio.post("https://pepsicoapp.com/api/AppMovil/validaGPID",
        data: formData);

    Map<String, dynamic> mapa = jsonDecode(response.data.toString());
    print(response.data.toString());

    print("user_id : " + mapa['user_id']);
    print("user_name : " + mapa['user_name']);
    print("group_id : " + mapa['group_id']);
    print("first_name : " + mapa['first_name']);
    print("last_name : " + mapa['last_name']);
    print("pais_id : " + mapa['pais_id']);
    print("addedPassword : " + mapa['addedPassword']);
  }

// 2
/*
{"error":"0","descripcion":"Contrase\u00f1a Cambiado con \u00e9xito"}
{"error":"1","descripcion":" Error al cambiar la  Contrase\u00f1a "}
 */
  void completarPassword() async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": "lubeck05@gmail.com"});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/completarPassword",
        data: formData);

    Map<String, dynamic> mapa = jsonDecode(response.data.toString());
    print(response.data.toString());

    print("user_id : " + mapa['user_id']);
    print("user_name : " + mapa['user_name']);

    print(response.data.toString());
  }

//3
/*
{"error":"0","descripcion":"logeado con exito","user_id":"16",
"user_name":"ventas@gmail.com","group_id":"4",
"first_name":"Ventas","last_name":"Ventas","pais_id":"6"}

{"error":"1","descripcion":"Acceso fallido. Por favor intente nuevamente"}
 */

  void login() async {
    Response response;
    Dio dio = new Dio();
    FormData formData =
        new FormData.fromMap({"gpid": this.gpid, "password": this.password});
    response = await dio.post("https://pepsicoapp.com/api/AppMovil/login",
        data: formData);
    print(response.data.toString());
  }

//4
/*
{"items":[
    {"id":"1","nombre":"PMF (PepsiCo Mexico Foods)"},
    {"id":"2","nombre":"PBF (PepsiCo Brazil Foods)"},
    {"id":"3","nombre":"CASA (Central America & South America)"}
  ]} 
*/
  void getUnidadesComerciales() async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": "lubeck05@gmail.com"});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getUnidadesComerciales",
        data: formData);
    print(response.data.toString());
  }

  // 5
/*
{"items":[
  {"id":"1","nombre":"Andinos"},
  {"id":"2","nombre":"SoCo (South Cone)"},
  {"id":"3","nombre":"Caricam"}
  ]}
 */

  void getUnidadesOperacion() async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": "lubeck05@gmail.com"});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getUnidadesOperacion",
        data: formData);
    print(response.data.toString());
  }

  // 6
  /*
  {"items":[
    {"id":"3","nombre":"Colombia"},
    {"id":"4","nombre":"Ecuador"},
    {"id":"5","nombre":"Per\u00c3\u00ba"},
    {"id":"6","nombre":"Venezuela"}]}
   */
  void getPaisesPorUnidadesOperacion() async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": "lubeck05@gmail.com"});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getpaisesByUnidadesOperacion",
        data: formData);
    print(response.data.toString());
  }

  // 7
  /*

   */
  void getTiendasPorPaisTipo() async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": "lubeck05@gmail.com"});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getTiendasByPaisTipo",
        data: formData);
    print(response.data.toString());
  }

  // 8
  /*
  {"items":
    {"id":"1","idPais":"1","idTipo":"2","nombre":"ADASD",
      "descripcion":"asd",
      "imagen2d":"http:\/\/localhost:8080\/pepsico\/uploads\/a2517a1dcfe52fce97e1ee79f1d3cae1.jpg",
      "imagen3d":"http:\/\/localhost:8080\/pepsico\/uploads\/a70e22a028c8684b08bfc0f574bf257b.jpg"}}
   
   {"items":[]}
   */
  void getTiendaByID() async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": "lubeck05@gmail.com"});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getTiendaByID",
        data: formData);
    print(response.data.toString());
  }

  //gpid
  get gpid {
    return this._gpid;
  }

  set gpid(String cn) {
    this._gpid = cn;
  }

  //token
  get token {
    return this._gpid;
  }

  set token(String cn) {
    this._gpid = cn;
  }

  //userID
  get userID {
    return this._userID;
  }

  set userID(String cn) {
    this._userID = cn;
  }

  //password
  get password {
    return this._password;
  }

  set password(String cn) {
    this._password = cn;
  }

  //_addedPasword
  get addedPasword {
    return this._addedPasword;
  }

  set addedPasword(String cn) {
    this._addedPasword = cn;
  }
  //
}
