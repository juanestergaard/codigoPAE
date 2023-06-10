//import 'package:flutter/foundation.dart';
// ignore_for_file: file_names, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pae1/app/widget/listasPAE.dart';
//import 'package:pae1/app/widget/verificacion.dart';

///arreglar

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';
import '../../widget/verificador2.dart';

// ignore: camel_case_types
class Pae_1_1_N3_View extends StatefulWidget {
  const Pae_1_1_N3_View({
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
  State<Pae_1_1_N3_View> createState() => _Pae_1_1_N3_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_N3_ViewState extends State<Pae_1_1_N3_View> {
  late TextEditingController _controller3;
  late List<List<String>> _Linea_cod3;

  //late widget.list;

  @override
  void initState() {
    super.initState();
    _controller3 = TextEditingController();
    _controller3.text = '15005';
    _Linea_cod3 = [
      ['1', '2', '3', '4', '5'],
      ['1', '2', '3', '4', '5']
    ];
    _Linea_cod3[0][0] = widget.list[0][0];
    _Linea_cod3[1][0] = widget.list[1][0];
    _Linea_cod3[0][1] = widget.list[0][1];
    _Linea_cod3[1][1] = widget.list[1][1];
    //_Linea_cod3[0][2] = widget.list[0][2];
    //_Linea_cod3[1][2] = widget.list[1][2];
  }

  @override
  void dispose() {
    super.dispose();
    _controller3.dispose();
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
                  'Introduzca el segundo parametro que se señaliza con color azul en el codigo de ejemplo:',
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
                        _Linea_cod3[1][0],
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
                        child: Text(
                          //'${_Linea_cod4[1][0]}',
                          '${_Linea_cod3[0][1]}',
                          style: const TextStyle(
                              color: Colors.black,
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
                          '15005',
                          style: TextStyle(
                              color: Colors.blue,
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
                    labelText: '15005',
                  ),
                  controller: _controller3, //esta seria la variable
                ),
                const SizedBox(
                  height: 20,
                ),
                //pasa
                BotonPrueba(
                  iconData: Icons.h_mobiledata,
                  buttonText: 'CONTINUAR',
                  onTap: () {
                    _Linea_cod3[0][2] = _controller3.text;
                    verificador2(
                        lista1: NdeArea,
                        lista2: _Linea_cod3,
                        y: 0,
                        x: 2); //lista1 cambiar
                    //print(_Linea_cod2);
                    var id = _controller3.text;
                    if (_Linea_cod3[1][2] != 'NoEncontrado') {
                      GoRouter.of(context).pushNamed(Routes.pae_1_1_N4,
                          extra:
                              _Linea_cod3, //le paso el array a siguinete pagina
                          params: {
                            'id': id.toString(),
                          });
                    } else {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('NO ENCONTRADO'),
                          content: const Text(
                              'El parametro que coloco no se encontro,aun asi, usted quiere continuar?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('NO'),
                            ),
                            TextButton(
                              onPressed: () {
                                GoRouter.of(context).pushNamed(
                                    Routes.pae_1_1_N4, //falta aca error
                                    extra:
                                        _Linea_cod3, //le paso el array a siguinete pagina
                                    params: {
                                      'id': id.toString(),
                                    });
                                Navigator.pop(context);
                              },
                              child: const Text('SI'),
                            ),
                          ],
                        ),
                      );
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
