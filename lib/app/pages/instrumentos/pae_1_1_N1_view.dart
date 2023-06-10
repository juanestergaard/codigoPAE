// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pae1/app/widget/tarjeta_instrumento.dart';
//import 'package:pae1/app/widget/boton_prueba.dart';

//import '../widget/boton_prueba.dart';
//import '../models/variable.dart';
//import '../widget/input_prueba.dart';
import '../../routes/routes.dart';
import '../../widget/tarjeta_valvula.dart';

// ignore: camel_case_types
class Pae_1_1_N1_View extends StatefulWidget {
  const Pae_1_1_N1_View({
    super.key,
    //required this.id,
  });

  @override
  State<Pae_1_1_N1_View> createState() => _Pae_1_1_N1_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_N1_ViewState extends State<Pae_1_1_N1_View> {
  //late TextEditingController _controller;
  //final myController = TextEditingController();
  late TextEditingController _myController;
  //late Image _Laimage;
  //TextEditingController? _myController;

  var index = 3;
  List Linea_cod = [
    [
      '1',
      '2',
      '3',
      '4',
      '5',
    ],
    [
      '1',
      '2',
      '3',
      '4',
      '5',
    ]
  ];

  @override
  void initState() {
    super.initState();
    _myController = TextEditingController(); //debe estar sino salta error
    _myController.text = '12';
    //_Laimage = Image.asset('assets/valvula.png');
    //_myController@31476204='12';
  }

  @override
  void dispose() {
    //_controller.dispose();
    super.dispose();
    _myController.dispose();
    //_Laimage.dispose();
  }

  //final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        appBar: AppBar(),
        // ignore: prefer_const_constructors
        body: //const Text('pepe'),
            Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text('Elija la imagen de la valvula'),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    /*
                    Stack(
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 250,
                                width: 250,
                                child: Image.asset(
                                  'assets/anunciador_luminico_en_campo.png',
                                  //height: 250,
                                  //width: 250,
                                  //width: double.infinity,
                                  //fit: BoxFit.cover,

                                  /*
                                  height: 250,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  */
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 50,
                          /*
                          bottom: 20,
                          right: 20,
                          */
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Colors.white,
                            child: const Text(
                              'ANDUBO',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0),
                            ),
                          ),
                        ),
/*
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.blue,
                        ),
*/
                      ],
                    ),
*/
/*
                    ///empieza
                    ///
                    ///
                    Stack(
                      children: <Widget>[
                        tarjeta_valvula(
                          imageV: Image.asset(
                              'assets/anunciador_luminico_en_campo.png'),
                          buttonText: 'valvula',
                          onTap: () {
                            var id = '3';
                            Linea_cod[0][0] = 'valvula';
                            Linea_cod[1][0] = 'assets/valvula.png';
                            GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
                                extra:
                                    Linea_cod, //le paso el array a siguinete pagina
                                params: {
                                  'id': id.toString(),
                                });
                          },
                        ),
                        Positioned(
                          top: 50,
                          left: 50,
                          /*
                          bottom: 20,
                          right: 20,
                          */
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Colors.white,
                            child: const Text(
                              'ANDUBO',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0),
                            ),
                          ),
                        ),
                      ],
                    ),
*/
//termina

                    tarjeta_instr(
                      imageV: Image.asset(
                        'assets/anunciador_luminico_en_campo.png',
                        scale: 0.3,
                      ),
                      buttonText: 'anunciador luminico en campo',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'anunciador luminico en campo';
                        Linea_cod[1][0] =
                            'assets/anunciador_luminico_en_campo.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_N2,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    tarjeta_instr(
                      imageV: Image.asset(
                        'assets/anunciador_luminico_en_la_sala_de_control.png',
                        scale: 0.3,
                      ),
                      buttonText: 'anunciador luminico en la sala de control',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] =
                            'anunciador luminico en la sala de control';
                        Linea_cod[1][0] =
                            'assets/anunciador_luminico_en_la_sala_de_control.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_N2,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    tarjeta_instr(
                      imageV: Image.asset(
                        'assets/instrumento_montado_en _el_panel_local.png',
                        scale: 0.3,
                      ),
                      buttonText: 'instrumento montado en el panel local',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] =
                            'instrumento montado en el panel local';
                        Linea_cod[1][0] =
                            'assets/instrumento_montado_en _el_panel_local.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_N2,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
/*
                    tarjeta_instr(
                      imageV: Image.asset(
                        'assets/instrumento_montado_en_el_campo.png',
                        scale: 0.3,
                      ),
                      buttonText: 'instrumento montado en el campo',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'instrumento montado en el campo';
                        Linea_cod[1][0] =
                            'assets/instrumento_montado_en_el_campo.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_N2,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
*/
                    const SizedBox(
                      height: 10,
                    ),
/*
                    tarjeta_instr(
                      imageV: Image.asset(
                        'assets/instrumento_montado_en_el_panel_de_la_sala_de_control',
                        scale: 0.3,
                      ),
                      buttonText: 'instrumento ',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'anunciador luminico en campo';
                        Linea_cod[1][0] =
                            'assets/instrumento_montado_en_el_panel_de_la _sala_de_control.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_N2,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
*/
                    const SizedBox(
                      height: 10,
                    ),

                    tarjeta_instr(
                      imageV: Image.asset(
                        'assets/anunciador_luminico_en_campo.png',
                        scale: 0.3,
                      ),
                      buttonText: 'anunciador luminico en campo',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'anunciador luminico en campo';
                        Linea_cod[1][0] =
                            'assets/anunciador_luminico_en_campo.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_N2,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    tarjeta_valvula(
                      imageV: Image.asset('assets/valvula_shutdown.png'),
                      buttonText: 'valvula shutdown cambiar',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula shutdown';
                        Linea_cod[1][0] = 'assets/valvula_shutdown.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_N2,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
                    /*
                    const SizedBox(
                      height: 10,
                    ),
                    */
                    /*
                    tarjeta_valvula(
                      imageV: Image.asset('assets/valvula.png'),
                      buttonText: 'esferica',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'esferica';
                        Linea_cod[1][0] = 'esferica';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V1,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    tarjeta_valvula(
                      imageV: Image.asset('assets/valvula.png'),
                      buttonText: 'esferica',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'esferica';
                        Linea_cod[1][0] = 'esferica';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V1,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    tarjeta_valvula(
                      imageV: Image.asset('assets/valvula.png'),
                      buttonText: 'esferica',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'esferica';
                        Linea_cod[1][0] = 'esferica';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V1,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    tarjeta_valvula(
                      imageV: Image.asset('assets/valvula.png'),
                      buttonText: 'esferica',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'esferica';
                        Linea_cod[1][0] = 'esferica';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V1,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
                    */
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
