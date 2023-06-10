//import 'package:flutter/foundation.dart';
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:pae1/app/widget/listasPAE.dart';
//import 'package:pae1/app/widget/verificacion.dart';

///arreglar

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';

// ignore: camel_case_types
class Pae_1_1_V2_View extends StatefulWidget {
  const Pae_1_1_V2_View({
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
  State<Pae_1_1_V2_View> createState() => _Pae_1_1_V2_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_V2_ViewState extends State<Pae_1_1_V2_View> {
  late TextEditingController _controller2;
  late List<List<String>> _Linea_cod2;

  //late widget.list;

  @override
  void initState() {
    super.initState();
    _controller2 = TextEditingController();
    _controller2.text = '10';
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
                  'Introduzca el numero que esta sobre la imagen que se señaliza con color azul en el codigo de ejemplo:',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: '10',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                            text: '"',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 100,
                      child: Image.asset(_Linea_cod2[1][0]), //imagen
                    ),
                    const Text('FFL-20008',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const Text('LO',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '10',
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
                    if (int.tryParse(_controller2.text) != null) {
                      var id = 3;
                      _Linea_cod2[0][1] = _controller2.text;
                      _Linea_cod2[1][1] = _controller2.text;
                      GoRouter.of(context).pushNamed(Routes.pae_1_1_V3, //aca
                          extra:
                              _Linea_cod2, //le paso el array a siguinete pagina
                          params: {
                            'id': id.toString(),
                          });
/*
                      _Linea_cod2[0][1] = _controller2.text;
                      verificador(
                          lista1: fluidos, lista2: _Linea_cod2, y: 0, x: 1);
                      //print(_Linea_cod2);
                      var id = _controller2.text;
                      if (_Linea_cod2[1][1] != 'NoEncontrado') {
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V3, //aca
                            extra:
                                _Linea_cod2, //le paso el array a siguinete pagina
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
                                      Routes.pae_1_1_V3, //aca
                                      extra:
                                          _Linea_cod2, //le paso el array a siguinete pagina
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
*/
                    } else {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('POR FAVOR'),
                          content: const Text('coloque un NÚMERO'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
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
