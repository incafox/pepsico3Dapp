import 'package:flutter/material.dart';
import 'estandarejecucion2.dart' as segundoEstandar;

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
      padding: const EdgeInsets.only(top: 4.0, left: 20, right: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3.5,
                  blurRadius: 2.5,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              border: Border.all(color: Color(0xff005CB4), width: 1),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
                title: Expanded(
                    child: Center(
                  child: Container(color: Colors.white, child: new Text(name)),
                )),
                backgroundColor: Colors.white70,
                children: <Widget>[
                  new ListTile(
                    title: const Text('One'),
                    onTap: () {
                      setState(() {
                        // this.foos = 'One';
                      });
                    },
                  ),
                ]),
          ),
        ),
      ),

      // MaterialButton(
      //     height: 50,
      //     child: Text(
      //       name,
      //       style: TextStyle(fontSize: 18),
      //     ),
      //     shape: RoundedRectangleBorder(
      //         borderRadius: new BorderRadius.circular(28.0),
      //         side: BorderSide(color: Colors.white60)),
      //     color: Colors.white70,
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(builder: (context) => Canales()),
      //       // );
      //       print("ada");
      //     }),
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
            child: Center(
                child: MiTexto(
                    cadena: "Estandares de Ejecucion",
                    colorx: Color(0xff005CB4))),
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
