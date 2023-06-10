// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:pae1/app/widget/boton_prueba.dart';

//import '../widget/boton_prueba.dart';
//import '../models/variable.dart';
//import '../widget/input_prueba.dart';
import '../../routes/routes.dart';
import '../../widget/tarjeta_valvula.dart';

// ignore: camel_case_types
class Pae_1_1_V1_View extends StatefulWidget {
  const Pae_1_1_V1_View({
    super.key,
    //required this.id,
  });

  @override
  State<Pae_1_1_V1_View> createState() => _Pae_1_1_V1_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_V1_ViewState extends State<Pae_1_1_V1_View> {
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
              const Text(
                'Elija la imagen de la valvula',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
/*
                    BotonPrueba(
                      iconData: Icons.h_mobiledata,
                      buttonText: 'fsffs',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'esferica';
                        Linea_cod[1][0] = 'assets/valvula.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
                            extra:
                                Linea_cod, //le paso el array a siguinete pagina
                            params: {
                              'id': id.toString(),
                            });
                      },
                    ),
*/
/*
                    tarjeta_valvula(
                      imageV: Image.asset('assets/valvula.png'),
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
                    */
                    const SizedBox(
                      height: 10,
                    ),
                    tarjeta_valvula(
                      imageV: Image.asset('assets/valvula_autoregulada.png'),
                      buttonText: 'valvula auto regulada',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula auto regulada';
                        Linea_cod[1][0] = 'assets/valvula_autoregulada.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      imageV:
                          Image.asset('assets/valvula_de_control_de_vacio.png'),
                      buttonText: 'valvula de control de vacio',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula de control de vacio';
                        Linea_cod[1][0] =
                            'assets/valvula_de_control_de_vacio.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      imageV: Image.asset('assets/valvula_de_retencion.png'),
                      buttonText: 'valvula de retencion',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula de retencion';
                        Linea_cod[1][0] = 'assets/valvula_de_retencion.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      imageV: Image.asset('assets/valvula_de_seguridad.png'),
                      buttonText: 'valvula de seguridad',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula de seguridad';
                        Linea_cod[1][0] = 'assets/valvula_de_seguridad.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      imageV: Image.asset('assets/valvula_esclusa.png'),
                      buttonText: 'valvula esclusa',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula esclusa';
                        Linea_cod[1][0] = 'assets/valvula_esclusa.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      imageV: Image.asset(
                          'assets/valvula_esferica_de_paso_reducido.png'),
                      buttonText: 'valvula esferica de paso reducido',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula esferica de paso reducido';
                        Linea_cod[1][0] =
                            'assets/valvula_esferica_de_paso_reducido.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      imageV: Image.asset(
                          'assets/valvula_esferica_de_paso_total.png'),
                      buttonText: 'valvula esferica de paso reducido',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula esferica de paso reducido';
                        Linea_cod[1][0] =
                            'assets/valvula_esferica_de_paso_total.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      imageV: Image.asset(
                          'assets/valvula_globo_de_control_a_diafragma.png'),
                      buttonText: 'valvula globo de control a diafragma',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] =
                            'valvula globo de control a diafragma';
                        Linea_cod[1][0] =
                            'assets/valvula_globo_de_control_a_diafragma.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      imageV: Image.asset('assets/valvula_mariposa.png'),
                      buttonText: 'valvula mariposa',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula mariposa';
                        Linea_cod[1][0] = 'assets/valvula_mariposa.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
                      buttonText: 'valvula shutdown',
                      onTap: () {
                        var id = '3';
                        Linea_cod[0][0] = 'valvula shutdown';
                        Linea_cod[1][0] = 'assets/valvula_shutdown.png';
                        GoRouter.of(context).pushNamed(Routes.pae_1_1_V2,
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
