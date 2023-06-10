//import 'dart:ffi';

// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../widget/input_prueba.dart';
import '../../routes/routes.dart';

// ignore: camel_case_types
class Pae_1_1_L1_View extends StatefulWidget {
  const Pae_1_1_L1_View({
    super.key,
    //required this.id,
  });

  @override
  State<Pae_1_1_L1_View> createState() => _Pae_1_1_L1_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_L1_ViewState extends State<Pae_1_1_L1_View> {
  //late TextEditingController _controller;
  //final myController = TextEditingController();
  late TextEditingController _myController;
  //TextEditingController? _myController;

  var index = 3;
  List Linea_cod = [
    ['1', '2', '3', '4', '5', 'prp'],
    ['1', '2', '3', '4', '5', 'prp']
  ];

  @override
  void initState() {
    super.initState();
    _myController = TextEditingController(); //debe estar sino salta error
    _myController.text = '12';
    //_myController@31476204='12';
  }

  @override
  void dispose() {
    //_controller.dispose();
    super.dispose();
    _myController.dispose();
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
              const Text(
                'Introduzca el primer parametro (numerico) que se señaliza con color azul en el codigo de ejemplo:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                  text: '12',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                  /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                      text: '"-PE-BT02-15009-CB20-H2',
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
              textfiel_widget(
                myController: _myController,
                text_textfiel: '12',
              ), ////es aca
              const SizedBox(
                height: 20,
              ),
              BotonPrueba(
                iconData: Icons.h_mobiledata,
                buttonText: 'CONTINUAR',
                onTap: () {
                  //print('Share Page');
                  index = 3;
                  var id = _myController.text;
                  if (int.tryParse(_myController.text) != null) {
                    Linea_cod[0][0] =
                        _myController.text; //la paso el valor al array
                    Linea_cod[1][0] = _myController.text;
                    //aca iria la verificacion
                    GoRouter.of(context).pushNamed(Routes.pae_1_1_L2,
                        extra: Linea_cod, //le paso el array a siguinete pagina
                        params: {
                          'id': id.toString(),
                        });
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
    );
  }
}


/*
class textfiel_widget extends StatelessWidget {
  const textfiel_widget({
    Key? key,
    required this.myController,
    required this.text_textfiel,
  }) : super(key: key);

  final TextEditingController myController;
  final String text_textfiel;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      decoration:  InputDecoration(
        border: OutlineInputBorder(),
        labelText: text_textfiel,
      ),
      //controller: _controller,
      controller: myController, //esta seria la variable
/*
      onSubmitted: (String value) async {
        //esto se llama cuando se termina de escribir
        await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Thanks!'),
              content: Text(
                  'You typed "$value", which has length ${value.characters.length}.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      },
      */
    );
  }
}
*/