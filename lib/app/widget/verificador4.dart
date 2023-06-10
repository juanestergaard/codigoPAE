// ignore_for_file: unnecessary_brace_in_string_interps

List verificador4({
  required List<List<String>> lista1, //varable medida
  required List<List<String>> lista2, //funcion/metodo
  //required List<List<String>> lista3,

  ///la larga
  required List<List<String>> lista4, //lade la pagina
  required int y,
  required int x,
}) {
  String dato1 = lista4[y][x].toUpperCase();
  //String dato2 = 'NoEncontrado';
  String dato3 = dato1.substring(0, 1); //el primer parametro de dato1
  String dato4 = dato1.substring(1, 2); //el segundo parametro de dato1
  //String dato5 = dato1.substring(2, 3); //el segundo parametro de dato1
  bool v1 = false;
  bool v2 = false;
  //bool v3 = false;
  String dato6 = 'NoEncontrado';
  String dato7 = 'NoEncontrado';
  //String dato8 = 'NoEncontrado';
  //int contador = 0;
  for (var i = 0; i < lista1.length; i++) {
    if (dato3 != lista1[i][0]) {
      //contador++;
    } else {
      dato6 = lista1[i][1]; //encontrado cambia
      v1 = true;
      //lista2[y + 1][x] = '$dato2 y de espesor $dato4"';
    }
  }
  for (var i = 0; i < lista2.length; i++) {
    if (dato4 != lista2[i][0]) {
      //contador++;
    } else {
      dato7 = lista2[i][1]; //encontrado cambia
      v2 = true;
      //lista2[y + 1][x] = '$dato2 y de espesor $dato4"';
    }
  }
  /*
  for (var i = 0; i < lista3.length; i++) {
    if (dato5 != lista3[i][0]) {
      //contador++;
    } else {
      dato8 = lista3[i][1]; //encontrado cambia
      v3 = true;
      //lista2[y + 1][x] = '$dato2 y de espesor $dato4"';
    }
  }
  */
  if (v1 == true && v2 == true) {
    lista4[y + 1][x] =
        'varable medida: ${dato6}, funcion/metodo: ${dato7} '; //yes
    lista4[y + 1][4] = 'yes';
    return lista4;
  } else if (v1 == true && v2 == false) {
    lista4[y + 1][x] = 'varable medida: ${dato6}, funcion/metodo: no'; //e1
    lista4[y + 1][4] = 'e1';
    return lista4;
  } else if (v1 == false && v2 == true) {
    lista4[y + 1][x] = 'varable medida: no, funcion/metodo: ${dato7} '; //e2
    lista4[y + 1][4] = 'e2';
    return lista4;
  } else if (v1 == false && v2 == false) {
    lista4[y + 1][x] = 'varable medida: no, funcion/metodo: no '; //e3
    lista4[y + 1][4] = 'e3';
    return lista4;
  } else {
    lista4[y + 1][4] = 'niidea';
    return lista4; //ni idea
  }
}
