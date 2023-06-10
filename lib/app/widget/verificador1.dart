List verificador1({
  required List<List<String>> lista1,

  ///la larga
  required List<List<String>> lista2, //lade la pagina
  required int y,
  required int x,
}) {
  String dato1 = lista2[y][x].toUpperCase();
  String dato2 = 'NoEncontrado';
  String dato3 = dato1.substring(0, 1); //el primer parametro de dato1
  String dato4 = dato1.substring(1); //el segundo parametro de dato1
  int contador = 0;
  for (var i = 0; i < lista1.length; i++) {
    if (dato3 != lista1[i][0]) {
      contador++;
    } else {
      dato2 = lista1[i][1]; //encontrado cambia
      lista2[y + 1][x] = '$dato2 y de espesor $dato4"';
    }
  }
  if (contador == lista1.length) {
    lista2[y + 1][x] = dato2;
    return lista2;
  } else {
    return lista2;
  }
}
