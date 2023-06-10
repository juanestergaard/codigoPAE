// ignore_for_file: unused_label

import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

//import '../routes/routes.dart'; //arreglar y generalizar

Future<String?> cartelalerta2(
  BuildContext context,
  String id,
  String texto1,
  //List<List<String>> lista3,
  Function()? onTap,
) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('NO ENCONTRADO'),
      content: Text(texto1
          //'El parametro que coloco no se encontro,aun asi, usted quiere continuar?'
          ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('NO'),
        ),
        TextButton(
          onPressed: () {
            onTap:
            onTap;
          },
          child: const Text('SI'),
        ),
      ],
    ),
  );
}
