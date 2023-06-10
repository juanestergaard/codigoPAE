// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

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
      decoration: InputDecoration(
        //esta es la decoracion cuando le haces clikc es azul
        border:
            const OutlineInputBorder(), //https://api.flutter.dev/flutter/material/InputDecoration-class.html
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
