//import 'package:flutter/foundation.dart';
// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pae1/app/widget/listasPAE.dart';
import 'package:pae1/app/widget/verificacion.dart';

///arreglar

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';
//import '../widget/verificador2.dart';

// ignore: camel_case_types
class Pae_1_1_V5_View extends StatefulWidget {
  const Pae_1_1_V5_View({
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
  State<Pae_1_1_V5_View> createState() => _Pae_1_1_V5_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_V5_ViewState extends State<Pae_1_1_V5_View> {
  late TextEditingController _controller5;
  late List<List<String>> _Linea_cod5;

  //late widget.list;

  @override
  void initState() {
    super.initState();
    _controller5 = TextEditingController();
    _controller5.text = 'LO';
    _Linea_cod5 = [
      ['1', '2', '3', '4', '5'],
      ['1', '2', '3', '4', '5']
    ];
    _Linea_cod5[0][0] = widget.list[0][0];
    _Linea_cod5[1][0] = widget.list[1][0];
    _Linea_cod5[0][1] = widget.list[0][1];
    _Linea_cod5[1][1] = widget.list[1][1];
    _Linea_cod5[0][2] = widget.list[0][2];
    _Linea_cod5[1][2] = widget.list[1][2];
    _Linea_cod5[0][3] = widget.list[0][3];
    _Linea_cod5[1][3] = widget.list[1][3];
  }

  @override
  void dispose() {
    super.dispose();
    _controller5.dispose();
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
                  'Introduzca el inferior parametro que esta debajo de la imagen que se señaliza con color azul en el codigo de ejemplo:',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${_Linea_cod5[0][1]}"',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Container(
                      height: 60,
                      width: 100,
                      child: Image.asset(_Linea_cod5[1][0]), //imagen
                    ),
                    RichText(
                      text: TextSpan(
                        text: '${_Linea_cod5[0][2]}-',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                            text: '${_Linea_cod5[0][3]} ',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const Text('LO',
                        style: TextStyle(
                            color: Colors.blue,
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
                    labelText: 'LO',
                  ),
                  controller: _controller5, //esta seria la variable
                ),
                const SizedBox(
                  height: 20,
                ),
                //pasa
                BotonPrueba(
                  iconData: Icons.h_mobiledata,
                  buttonText: 'CONTINUAR',
                  onTap: () {
                    ///////////////
                    ///
                    _Linea_cod5[0][4] = _controller5.text;
                    verificador(
                        lista1: abreviaturasGenerales,
                        lista2: _Linea_cod5,
                        y: 0,
                        x: 4); //lista1 cambiar
                    //print(_Linea_cod2);
                    var id = _controller5.text;
                    if (_Linea_cod5[1][4] != 'NoEncontrado') {
                      GoRouter.of(context).pushNamed(Routes.pae_1_1_V6,

                          ///error
                          extra:
                              _Linea_cod5, //le paso el array a siguinete pagina
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
                                    Routes.pae_1_1_V6, //falta aca error
                                    extra:
                                        _Linea_cod5, //le paso el array a siguinete pagina
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
