// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:pae1/app/widget/listasPAE.dart';
//import 'package:pae1/app/widget/verificacion.dart';

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';

// ignore: camel_case_types
class Pae_1_1_L7_View extends StatefulWidget {
  const Pae_1_1_L7_View({
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
  State<Pae_1_1_L7_View> createState() => _Pae_1_1_L7_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_L7_ViewState extends State<Pae_1_1_L7_View> {
  late TextEditingController _controller7;
  late List<List<String>> _Linea_cod7;

  //late widget.list;

  @override
  void initState() {
    super.initState();
    _controller7 = TextEditingController();
    _controller7.text = 'H2';
    _Linea_cod7 = [
      ['1', '2', '3', '4', '5', 'prp'],
      ['1', '2', '3', '4', '5', 'prp']
    ];
    _Linea_cod7[0][0] = widget.list[0][0];
    _Linea_cod7[1][0] = widget.list[1][0];
    _Linea_cod7[0][1] = widget.list[0][1];
    _Linea_cod7[1][1] = widget.list[1][1];
    _Linea_cod7[0][2] = widget.list[0][2];
    _Linea_cod7[1][2] = widget.list[1][2];
    _Linea_cod7[0][3] = widget.list[0][3];
    _Linea_cod7[1][3] = widget.list[1][3];
    _Linea_cod7[0][4] = widget.list[0][4];
    _Linea_cod7[1][4] = widget.list[1][4];
    _Linea_cod7[0][5] = widget.list[0][5];
    _Linea_cod7[1][5] = widget.list[1][5];
  }

  @override
  void dispose() {
    super.dispose();
    _controller7.dispose();
    //_Linea_cod2.vo();
  }

  //final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Colors.blueAccent,
                Colors.blue,
                Colors.lightBlue,
                Colors.lightBlueAccent,
              ],
            ),
          ),
          padding: const EdgeInsets.all(25),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text("${widget.id}"),
              //Text("${widget.list[0][0]}"),
              const Text(
                'Lectura de la linea:',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'El diametro en pulgadas es: ${_Linea_cod7[1][0]}',
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'El fluido es: ${_Linea_cod7[1][1]}',
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'El codigo de yacimiento/instalacion es: ',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Text(
                _Linea_cod7[1][2],
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 320,
                child: Text(
                  'El area es ${_Linea_cod7[1][3]}',
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'La clase de cañeria es: ${_Linea_cod7[1][4]}',
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'La aislacion es de: ${_Linea_cod7[1][5]}',
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),

/*
              const Text(
                'Introduzca el ultimo parametro que se señaliza con color azul en el codigo de ejemplo:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
*/
              const SizedBox(
                height: 20,
              ),
              /*
              RichText(
                text: TextSpan(
                  text:
                      '${_Linea_cod7[0][0]}"-${_Linea_cod7[0][1].toUpperCase()}-${_Linea_cod7[0][2].toUpperCase()}-${_Linea_cod7[0][3].toUpperCase()}-${_Linea_cod7[0][4].toUpperCase()}-${_Linea_cod7[0][5].toUpperCase()}',
                  //text: '12"-',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  /*defining default style is optional */
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'azul',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: '', //talvez ande mal
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
*/

/*
              TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
                controller: _controller7, //esta seria la variable
              ),
*/
              const SizedBox(
                height: 20,
              ),
              //pasa
              BotonPrueba(
                iconData: Icons.h_mobiledata,
                buttonText: 'VOLVER AL INICIO',
                onTap: () {
                  GoRouter.of(context).pushNamed(Routes.home);
                  /*
                  _Linea_cod6[0][5] = _controller6.text;
                  verificador(
                      lista1: codYacimiento,
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
                */
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
