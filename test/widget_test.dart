// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:test/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pepsico/main.dart';
import 'package:pepsico/provider.dart';
void main() {
  test('Test de conexion api token', () async {
    // Build our app and trigger a frame.
    final ProveedorDatos datos = new ProveedorDatos();

    
    //hace comprobacion 
    String error = await datos.validaGPID("lubeck05@gmail.com");
    //define 
    expect(error, "0"); //0 existe 1 no existe
    //hace login
    bool err = await datos.login("lubeck05@gmail.com","Lolo7@");
    expect(err, true);
    //unidades comerciales 
    await datos.getUnidadesComerciales();
    
    await datos.getUnidadesOperacion("3");

    await datos.getPaisesPorUnidadesOperacion("1");
    // await 
    await datos.getTiendasPorPaisTipo("1", "1");

    // await datos.getTiendaByID("23");

    // expect(find.text('1'), findsOneWidget);
  });
}
