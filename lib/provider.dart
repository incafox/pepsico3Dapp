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
  String _fotoPerfil = "";
  String _segundoNombre = "";
  String _primerNombre = "";
  String _tipoUsuario = "";
  String _descripcion = "";


  String pais_bandera= "";
  String nombre_pais="";

/*
test = lubeck05@gmail.com, Lolo7@
*/

// 1
/* 
{"error":"0","descripcion":"logeado con exito","user_id":"18",
"user_name":"24782358743859","group_id":"0","first_name":"test",
"last_name":"test","pais_id":null,"addedPassword":"0"}
*/
  Future<String> validaGPID(String gpidd) async {
    this.gpid = gpidd;
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap({"gpid": this.gpid});
    response = await dio.post("https://pepsicoapp.com/api/AppMovil/validaGPID",
        data: formData);

    Map<String, dynamic> mapa = jsonDecode(response.data.toString());
    // print(response.data.toString());

    if (mapa['error'] == "0") {
      //si esta bien
      this.userID = mapa['user_id'];
      this.fotoPerfil = mapa['foto_perfil'];
      this.paisID = mapa['pais_id'];
      this.tipoUsuario = mapa['tipo_usuario'];
      this.primerNombre = mapa['first_name'];
      this.segundoNombre = mapa['last_name'];
      this.addedPasword = mapa['addedPassword'];
      this.token = mapa['token'];
    } else {
      //si no hay cuenta
      this.descripcion = mapa['descripcion'];
      this.addedPasword = mapa['added_password'];
    }
    // print("user_id : " + mapa['user_id']);
    // print("user_name : " + mapa['user_name']);
    // print("group_id : " + mapa['group_id']);
    // print("first_name : " + mapa['first_name']);
    // print("last_name : " + mapa['last_name']);
    // print("pais_id : " + mapa['pais_id']);
    // print("addedPassword : " + mapa['addedPassword']);
    return mapa['error'];
  }

// 2
/*
{"error":"0","descripcion":"Contrase\u00f1a Cambiado con \u00e9xito"}
{"error":"1","descripcion":" Error al cambiar la  Contrase\u00f1a "}
 */
  Future<String> completarPassword(String password, String password2) async {
    String respuesta = "";
    Response response;
    Dio dio = new Dio();

    if (password == password2) {
      // print("user_id : " + mapa['user_id']);
      // print("password : " + password2);
      print(response.data.toString());
      FormData formData = new FormData.fromMap(
          {"user_id": this.userID, "password": password, "token": this.token});
      response = await dio.post(
          "https://pepsicoapp.com/api/AppMovil/completarPassword",
          data: formData);
      Map<String, dynamic> mapa = jsonDecode(response.data.toString());
      print(response.data.toString());
    } else {
      respuesta = "Las claves no son iguales";
    }
    return respuesta;
  }

//3
/*
{"error":"0","descripcion":"logeado con exito","user_id":"16",
"user_name":"ventas@gmail.com","group_id":"4",
"first_name":"Ventas","last_name":"Ventas","pais_id":"6"}

{"error":"1","descripcion":"Acceso fallido. Por favor intente nuevamente"}
 */
  Future<bool> login(String user, String clave) async {
    this.gpid = user;
    this.password = clave;
    bool estado = false;
    String respuesta = "";
    Response response;
    Dio dio = new Dio();
    FormData formData =
        new FormData.fromMap({"gpid": this.gpid, "password": this.password});
    response = await dio.post("https://pepsicoapp.com/api/AppMovil/login",
        data: formData);
    // print(response.data.toString());

    Map<String, dynamic> mapa = jsonDecode(response.data.toString());
    // print(response.data.toString());
    if (mapa["error"] == "0") {
      //si todo esta bien, logeado con exito
      respuesta = mapa["descripcion"];
      this.token = mapa["token"];
      this.fotoPerfil = mapa["foto_perfil"];
      this.pais_bandera = mapa["pais_bandera"];
      this._firstName = mapa["firtsName"];
      this._lastName = mapa["lastName"];
      this.userID = mapa["user_id"];
      this.nombre_pais = mapa["nombre_pais"];

      estado = true;
    } else {
      respuesta = mapa['descripcion'];
    }
    return estado;
  }

//4
/*
{"items":[
    {"id":"1","nombre":"PMF (PepsiCo Mexico Foods)"},
    {"id":"2","nombre":"PBF (PepsiCo Brazil Foods)"},
    {"id":"3","nombre":"CASA (Central America & South America)"}
  ]} 
*/
  Future<String> getUnidadesComerciales() async {
    Response response;
    Dio dio = new Dio();
    // FormData formData = new FormData.fromMap({"gpid": "lube});
    // response = await dio.get(
    //   "https://pepsicoapp.com/api/AppMovil/getUnidadesComerciales",
    // );
FormData formData =
        new FormData.fromMap({"token":this.token});
    response = await dio.post("https://pepsicoapp.com/api/AppMovil/getUnidadesComerciales",
        data: formData);
    print(response.data.toString());
    return response.data.toString();
  }

  // 5
/*
{"items":[
  {"id":"1","nombre":"Andinos"},
  {"id":"2","nombre":"SoCo (South Cone)"},
  {"id":"3","nombre":"Caricam"}
  ]}
 */

  Future<String> getUnidadesOperacion(String numero) async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap(
        {"idUnidadComercial": numero, "token": this.token});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getUnidadesOperacion",
        data: formData);
    print(response.data.toString());
    // print(response.data["id"].toString());
    return response.data.toString();
  }

  // 6
  /*
  {"items":[
    {"id":"3","nombre":"Colombia"},
    {"id":"4","nombre":"Ecuador"},
    {"id":"5","nombre":"Per\u00c3\u00ba"},
    {"id":"6","nombre":"Venezuela"}]}
   */
  Future<String> getPaisesPorUnidadesOperacion(String idUnidadOperacion) async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap(
        {"idUnidadOperacion": idUnidadOperacion, "token": this.token});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getpaisesByUnidadesOperacion",
        data: formData);
    print(response.data.toString());
    return response.data.toString();
  }

  // 7
  /*
   */
  Future<String> getTiendasPorPaisTipo(
      String idTipoTienda, String idPais) async {
    Response response;
    Dio dio = new Dio();
    FormData formData = new FormData.fromMap(
        {"idTipoTienda": idTipoTienda, "idPais": idPais, "token": this.token});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getTiendasByPaisTipo",
        data: formData);
    print(response.data.toString());
    return response.data.toString();
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
  Future<String> getTiendaByID(String idTienda) async {
    Response response;
    Dio dio = new Dio();
    FormData formData =
        new FormData.fromMap({"idTienda": idTienda, "token": this.token});
    response = await dio.post(
        "https://pepsicoapp.com/api/AppMovil/getTiendaByID",
        data: formData);
    print(response.data.toString());
    return response.data.toString();
  }
  
  
  Future<String> getTienda3D(String link)async{
    Response response;
    Dio dio = new Dio();
    // FormData formData = 
    //     new FormData.fromMap({"link":link,"token":this.token});
    // response = await dio.post(
    //   "request de descarga"
    // );

    //manage exception
    //descargar aca, agregar external write
    // permision y descarga dio
  
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

  //Foto de perfil
  get fotoPerfil {
    return this._fotoPerfil;
  }

  set fotoPerfil(String cn) {
    this._fotoPerfil = cn;
  }

//Foto de perfil
  get paisID {
    return this._paisID;
  }

  set paisID(String cn) {
    this._paisID = cn;
  }

  //tipo usuario
  get tipoUsuario {
    return this._tipoUsuario;
  }

  set tipoUsuario(String cn) {
    this._tipoUsuario = cn;
  }

  //primer nombre
  get primerNombre {
    return this._primerNombre;
  }

  set primerNombre(String cn) {
    this._primerNombre = cn;
  }

  //Foto de perfil
  get segundoNombre {
    return this._segundoNombre;
  }

  set segundoNombre(String cn) {
    this._segundoNombre = cn;
  }

  //Foto de perfil
  get descripcion {
    return this._descripcion;
  }

  set descripcion(String cn) {
    this._descripcion = cn;
  }
}
