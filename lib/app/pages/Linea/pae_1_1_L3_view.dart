//import 'package:flutter/foundation.dart';
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pae1/app/widget/listasPAE.dart';
import 'package:pae1/app/widget/verificacion.dart';

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';

// ignore: camel_case_types
class Pae_1_1_L3_View extends StatefulWidget {
  const Pae_1_1_L3_View({
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
  State<Pae_1_1_L3_View> createState() => _Pae_1_1_L3_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_L3_ViewState extends State<Pae_1_1_L3_View> {
  late TextEditingController _controller3;
  late List<List<String>> _Linea_cod3;

  //late widget.list;

  @override
  void initState() {
    super.initState();
    _controller3 = TextEditingController();
    _controller3.text = 'BT02';
    _Linea_cod3 = [
      ['1', '2', '3', '4', '5', 'prp'],
      ['1', '2', '3', '4', '5', 'prp']
    ];
    _Linea_cod3[0][0] = widget.list[0][0];
    _Linea_cod3[1][0] = widget.list[1][0];
    _Linea_cod3[0][1] = widget.list[0][1];
    _Linea_cod3[1][1] = widget.list[1][1];
  }

  @override
  void dispose() {
    super.dispose();
    _controller3.dispose();
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text("${widget.id}"),
              //Text("${widget.list[0][0]}"),
              const Text(
                'Introduzca el tercer parametro que se señaliza con color azul en el codigo de ejemplo:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text:
                      '${_Linea_cod3[0][0]}"-${_Linea_cod3[0][1].toUpperCase()}-',
                  //text: '12"-',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  /*defining default style is optional */
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'BT02',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: '-15009-CB20-H2',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'BT02',
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
                  verificador(
                      lista1: codYacimiento, lista2: _Linea_cod3, y: 0, x: 2);
                  //print(_Linea_cod2);
                  var id = _controller3.text;
                  if (_Linea_cod3[1][2] != 'NoEncontrado') {
                    GoRouter.of(context).pushNamed(Routes.pae_1_1_L4,

                        ///error
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
                                  Routes.pae_1_1_L4, //falta aca error
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
    );
  }
}

                  //widget.list[1][2] = _controller.text;

                  /*
                  print((int.tryParse('2021'))! +
                      1); // 2021 y el ! es porque puedar null
                  print(int.tryParse('1f')); //null
                  print(2 + 2); // 4
                  //print('Share Page');
                  */
                  /*
                  GoRouter.of(context).pushNamed(
                    Routes.pae_1_1,
                  );
                  */