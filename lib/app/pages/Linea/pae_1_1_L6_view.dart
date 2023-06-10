// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pae1/app/widget/listasPAE.dart';
//import 'package:pae1/app/widget/verificacion.dart';

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';
import '../../widget/verificador1.dart';

// ignore: camel_case_types
class Pae_1_1_L6_View extends StatefulWidget {
  const Pae_1_1_L6_View({
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
  State<Pae_1_1_L6_View> createState() => _Pae_1_1_L6_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_L6_ViewState extends State<Pae_1_1_L6_View> {
  late TextEditingController _controller6;
  late List<List<String>> _Linea_cod6;

  //late widget.list;

  @override
  void initState() {
    super.initState();
    _controller6 = TextEditingController();
    _controller6.text = 'H2';
    _Linea_cod6 = [
      ['1', '2', '3', '4', '5', 'prp'],
      ['1', '2', '3', '4', '5', 'prp']
    ];
    _Linea_cod6[0][0] = widget.list[0][0];
    _Linea_cod6[1][0] = widget.list[1][0];
    _Linea_cod6[0][1] = widget.list[0][1];
    _Linea_cod6[1][1] = widget.list[1][1];
    _Linea_cod6[0][2] = widget.list[0][2];
    _Linea_cod6[1][2] = widget.list[1][2];
    _Linea_cod6[0][3] = widget.list[0][3];
    _Linea_cod6[1][3] = widget.list[1][3];
    _Linea_cod6[0][4] = widget.list[0][4];
    _Linea_cod6[1][4] = widget.list[1][4];
  }

  @override
  void dispose() {
    super.dispose();
    _controller6.dispose();
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
                'Introduzca el ultimo parametro que se señaliza con color azul en el codigo de ejemplo:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text:
                      '${_Linea_cod6[0][0]}"-${_Linea_cod6[0][1].toUpperCase()}-${_Linea_cod6[0][2].toUpperCase()}-${_Linea_cod6[0][3].toUpperCase()}-${_Linea_cod6[0][4].toUpperCase()}-',
                  //text: '12"-',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  /*defining default style is optional */
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'H2',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: '"', //talvez ande mal
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
                  labelText: 'H2',
                ),
                controller: _controller6, //esta seria la variable
              ),
              const SizedBox(
                height: 20,
              ),
              //pasa
              BotonPrueba(
                iconData: Icons.h_mobiledata,
                buttonText: 'CONTINUAR',
                onTap: () {
                  _Linea_cod6[0][5] = _controller6.text;
                  verificador1(
                      lista1: Aislacion,
                      lista2: _Linea_cod6,
                      y: 0,
                      x: 5); //lista1 cambiar
                  //print(_Linea_cod2);
                  var id = _controller6.text;
                  if (_Linea_cod6[1][5] != 'NoEncontrado') {
                    GoRouter.of(context).pushNamed(Routes.pae_1_1_L7, //falta

                        ///error
                        extra:
                            _Linea_cod6, //le paso el array a siguinete pagina
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
                                  Routes.pae_1_1_L7, //falta aca error
                                  extra:
                                      _Linea_cod6, //le paso el array a siguinete pagina
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
