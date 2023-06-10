import 'package:flutter/material.dart';

class PaeView extends StatelessWidget {
  const PaeView({
    super.key,
    //required this.id,
  });
  //final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'lo logre',
          //'PRODUCT: $id',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
