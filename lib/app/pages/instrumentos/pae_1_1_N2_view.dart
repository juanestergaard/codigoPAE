//import 'package:flutter/foundation.dart';
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pae1/app/widget/cartel_alerta2.dart';
import 'package:pae1/app/widget/listasPAE.dart';
//import 'package:pae1/app/widget/verificador3.dart';
//import 'package:pae1/app/widget/listasPAE.dart';
//import 'package:pae1/app/widget/verificacion.dart';

///arreglar

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';
import '../../widget/verificador4.dart';

// ignore: camel_case_types
class Pae_1_1_N2_View extends StatefulWidget {
  const Pae_1_1_N2_View({
    super.key,
    required this.id,
    required this.list,
    /*this.object*/
  });
  final String id;
  //final List<dynamic> list;
  final List list;
  //id=6;
  @override
  State<Pae_1_1_N2_View> createState() => _Pae_1_1_N2_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_N2_ViewState extends State<Pae_1_1_N2_View> {
  late TextEditingController _controller2;
  late List<List<String>> _Linea_cod2;

  //late widget.list;

  @override
  void initState() {
    super.initState();
    _controller2 = TextEditingController();
    _controller2.text = 'TI';
    _Linea_cod2 = [
      ['1', '2', '3', '4', '5'],
      ['1', '2', '3', '4', '5']
    ];
    _Linea_cod2[0][0] = widget.list[0][0];
    _Linea_cod2[1][0] = widget.list[1][0];
  }

  @override
  void dispose() {
    super.dispose();
    _controller2.dispose();
    //_Linea_cod2.vo();
  }

  //final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Introduzca el primer parametro que se señaliza con color azul en el codigo de ejemplo:',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        _Linea_cod2[1][0],
                        width: 200,
                        height: 200,
                        scale: 0.2,
                      ), //imagen
                    ),
                    Positioned(
                      top: 55,
                      left: 80,
                      /*
                          bottom: 20,
                          right: 20,
                          */
                      child: Container(
                        width: 50,
                        height: 35,
                        color: Colors.white,
                        child: const Text(
                          'TI',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 115,
                      left: 55,
                      /*
                          bottom: 20,
                          right: 20,
                          */
                      child: Container(
                        width: 100,
                        height: 35,
                        color: Colors.white,
                        child: const Text(
                          'XXXXX',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'TI',
                  ),
                  controller: _controller2, //esta seria la variable
                ),
                const SizedBox(
                  height: 20,
                ),
                //pasa
                BotonPrueba(
                  iconData: Icons.h_mobiledata,
                  buttonText: 'CONTINUAR',
                  onTap: () {
                    _Linea_cod2[0][1] = _controller2.text;
                    verificador4(
                      lista1: letra1,
                      lista2: letra2,
                      lista4: _Linea_cod2,
                      x: 1,
                      y: 0,
                    );
                    var id = _controller2.text;
                    if (_Linea_cod2[1][4] == 'yes') {
                      GoRouter.of(context).pushNamed(Routes.pae_1_1_N3,
                          extra:
                              _Linea_cod2, //le paso el array a siguinete pagina
                          params: {
                            'id': id.toString(),
                          });
                    }
                    if (_Linea_cod2[1][4] == 'e1') {
                      cartelalerta2(context, id,
                          'El segundo parametro que coloco no se encontro,aun asi, usted quiere continuar?',
                          () {
                        GoRouter.of(context)
                            .pushNamed(Routes.pae_1_1_N3, //falta aca error
                                extra: _Linea_cod2,
                                params: {
                              'id': id.toString(),
                            });
                        Navigator.pop(context);
                      });
                    }
                    if (_Linea_cod2[1][4] == 'e2') {
                      cartelalerta2(context, id,
                          'El primer parametro que coloco no se encontro,aun asi, usted quiere continuar?',
                          () {
                        GoRouter.of(context)
                            .pushNamed(Routes.pae_1_1_N3, //falta aca error
                                extra: _Linea_cod2,
                                params: {
                              'id': id.toString(),
                            });
                        Navigator.pop(context);
                      });
                    }
                    if (_Linea_cod2[1][4] == 'e3') {
                      cartelalerta2(context, id,
                          'El primer y segundo parametro que coloco no se encontro,aun asi, usted quiere continuar?',
                          () {
                        GoRouter.of(context)
                            .pushNamed(Routes.pae_1_1_N3, //falta aca error
                                extra: _Linea_cod2,
                                params: {
                              'id': id.toString(),
                            });
                        Navigator.pop(context);
                      });
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
