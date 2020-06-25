import 'package:flutter/material.dart';

class EstandarEjecucion extends StatefulWidget {
  @override
  _EstandarEjecucionState createState() => _EstandarEjecucionState();
}

class _EstandarEjecucionState extends State<EstandarEjecucion> {
   Widget MiTexto({String cadena, Color colorx}) {
    return Text(
      cadena,
      style:
          TextStyle(color: colorx == null ? Colors.blue : colorx, fontSize: 20),
    );
  }

  Widget boton(String name) {
    return Padding(
      padding: const EdgeInsets.only(top:4.0,left: 20,right: 20),
      child: MaterialButton(
        height: 50,
          child: Text(name,style: TextStyle(fontSize: 18),),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(28.0),
              side: BorderSide(color: Colors.white60)),
          color: Colors.white70,
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Canales()),
            // );
            print("ada");
          }),
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
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: MiTexto(cadena:"Estandares de Ejecucion",colorx: Colors.blueAccent)),
          ),
          boton("Portafolio"),
          boton("Planograma"),
          boton("Rack Adecuado"),
          boton("SOD/SOE"),
          boton("Rotacion Preventiva"),
          boton("Rotacion Preventiva"),
          boton("Rotacion Preventiva"),
          boton("Precios visibles y correctos"),
          boton("Material Promocional"),
          boton("Activaciones y promociones"),
          boton("Juntos mejor /BTG"),
          boton("Solucion digital"),
        ],
      ),
    );
  }
}
