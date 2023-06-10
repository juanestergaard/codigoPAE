import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart'; //arreglar y generalizar

Future<String?> cartelalerta(
  BuildContext context,
  String id,
  String texto1,
  List<List<String>> lista3,
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
            GoRouter.of(context).pushNamed(Routes.pae_1_1_V4, //falta aca error
                extra:
                    lista3, //_Linea_cod3, //le paso el array a siguinete pagina
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
