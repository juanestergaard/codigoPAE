// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:pae1/app/widget/listasPAE.dart';
//import 'package:pae1/app/widget/verificacion.dart';

import '../../widget/boton_prueba.dart';
//import '../models/variable.dart';
import '../../routes/routes.dart';

// ignore: camel_case_types
class Pae_1_1_V6_View extends StatefulWidget {
  const Pae_1_1_V6_View({
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
  State<Pae_1_1_V6_View> createState() => _Pae_1_1_V6_ViewState();
}

// ignore: camel_case_types
class _Pae_1_1_V6_ViewState extends State<Pae_1_1_V6_View> {
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
    //_Linea_cod6[0][5] = widget.list[0][5];
    //_Linea_cod6[1][5] = widget.list[1][5];
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
              Expanded(
                child: ListView(
                  children: <Widget>[
                    //Text("${widget.id}"),
                    //Text("${widget.list[0][0]}"),
                    const Text(
                      'Lectura de la valvula:',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 320,
                      child: Text(
                        'La imagen es:',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 100,
                      /*
                      decoration: 
                      
                      BoxDecoration(
                          border: Border.all(width: 1, color: Colors.red),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0))),
*/
                      child: Image.asset(_Linea_cod6[1][0]),
                      //Text(
                      // _Linea_cod6[1][0]), //Image.asset('assets/sara.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'El tipo de la valvula de la imagen es: ${_Linea_cod6[0][0]}',
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'El diametro en pulgadas es: ${_Linea_cod6[1][1]}',
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'El tipo de valvula es: ${_Linea_cod6[1][2]}',
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'El area es: ',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      _Linea_cod6[1][3],
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    /*
                    Text(
                      'La aislacion es de: ${_Linea_cod6[1][5]}',
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                          
                    const SizedBox(
                      height: 20,
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
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
