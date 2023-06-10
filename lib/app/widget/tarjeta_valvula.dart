// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class tarjeta_valvula extends StatelessWidget {
  const tarjeta_valvula({
    required this.imageV,
    required this.buttonText,
    this.onTap,
    Key? key,
  }) : super(key: key);
  final Image imageV;
  final String buttonText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: //Text('pepe'),
          InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        //onTap: () {},
        child: //Text('pepe'),
            Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.red),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0))),
              child: imageV, //Image.asset('assets/sara.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              buttonText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
