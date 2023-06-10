//import 'package:flutter/foundation.dart';
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pae1/app/widget/listasPAE.dart';
//import 'package:pae1/app/widget/verificacion.dart';
import 'package:pae1/app/widget/verificador3.dart';

///arreglar

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';
import '../../widget/cartel_alerta.dart';

// ignore: camel_case_types
class Pae_1_1_V3_View extends StatefulWidget {
  const Pae_1_1_V3_View({
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
  State<Pae_1_1_V3_View> createState() => _Pae_1_1_V3_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_V3_ViewState extends State<Pae_1_1_V3_View> {
  late TextEditingController _controller3;
  late List<List<String>> _Linea_cod3;

  //late widget.list;

  @override
  void initState() {
    super.initState();
    _controller3 = TextEditingController();
    _controller3.text = 'FFL';
    _Linea_cod3 = [
      ['1', '2', '3', '4', '5'],
      ['1', '2', '3', '4', '5']
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
                  'Introduzca el primer parametro(tres letras) que esta debajo de la imagen que se señaliza con color azul en el codigo de ejemplo:',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${_Linea_cod3[0][1]}"',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Container(
                      height: 60,
                      width: 100,
                      child: Image.asset(_Linea_cod3[1][0]), //imagen
                    ),
                    RichText(
                      text: const TextSpan(
                        text: 'FFL',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                            text: '-20008',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
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
                    labelText: 'FFL',
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
                    verificador3(
                      lista1: tipodevalvula,
                      lista2: tipoextremo,
                      lista3: accesorrios,
                      lista4: _Linea_cod3,
                      y: 0,
                      x: 2,
                    );
                    //print(_Linea_cod2);
                    var id = _controller3.text;
                    if (_Linea_cod3[1][4] == 'yes') {
                      GoRouter.of(context).pushNamed(Routes.pae_1_1_V4,

                          ///error
                          extra:
                              _Linea_cod3, //le paso el array a siguinete pagina
                          params: {
                            'id': id.toString(),
                          });
                    }
                    if (_Linea_cod3[1][4] == 'e5') {
                      cartelalerta(
                        context,
                        id,
                        'no se a encontrado el parametro de la tercera letra, aun asi, usted quiere continuar?',
                        _Linea_cod3,
                      );
                    }
                    if (_Linea_cod3[1][4] == 'e6') {
                      cartelalerta(
                        context,
                        id,
                        'no se a encontrado el parametro de la segunda letra, aun asi, usted quiere continuar?',
                        _Linea_cod3,
                      );
                    }
                    if (_Linea_cod3[1][4] == 'e1') {
                      cartelalerta(
                        context,
                        id,
                        'no se a encontraron los parametros de la segunda y tercera letra, aun asi, usted quiere continuar?',
                        _Linea_cod3,
                      );
                    }
                    if (_Linea_cod3[1][4] == 'e7') {
                      cartelalerta(
                        context,
                        id,
                        'no se a encontrado el parametro de la primera letra, aun asi, usted quiere continuar?',
                        _Linea_cod3,
                      );
                    }
                    if (_Linea_cod3[1][4] == 'e2') {
                      cartelalerta(
                        context,
                        id,
                        'no se a encontraron los parametros de la primera y tercera letra, aun asi, usted quiere continuar?',
                        _Linea_cod3,
                      );
                    }
                    if (_Linea_cod3[1][4] == 'e3') {
                      cartelalerta(
                        context,
                        id,
                        'no se a encontraron los parametros de la primera y segunda letra, aun asi, usted quiere continuar?',
                        _Linea_cod3,
                      );
                    }
                    if (_Linea_cod3[1][4] == 'e4') {
                      cartelalerta(
                        context,
                        id,
                        'no se a encontraron los parametros de la primera, segunda y tercera letra, aun asi, usted quiere continuar?',
                        _Linea_cod3,
                      );
                    }
                    /*
                    else {
                      cartelalerta(context, id,'texto', _Linea_cod3,);
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
      ),
    );
  }
}
