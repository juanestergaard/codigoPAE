//import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

//import 'listasPAE.dart';

List verificador({
  required List<List<String>> lista1,

  ///la larga
  required List<List<String>> lista2, //lade la pagina
  required int y,
  required int x,
}) {
  String dato1 = lista2[y][x].toUpperCase();
  String dato2 = 'NoEncontrado';
  int contador = 0;
  for (var i = 0; i < lista1.length; i++) {
    if (dato1 != lista1[i][0]) {
      contador++;
    } else {
      dato2 = lista1[i][1];
      lista2[y + 1][x] = dato2;
    }
  }
  if (contador == lista1.length) {
    lista2[y + 1][x] = dato2;
    return lista2;
  } else {
    return lista2;
  }
}
//Building Widgets with Loops Solution in Flutter   ///busca video