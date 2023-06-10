import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    super.key,
    required this.iid,
  });
  final int iid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'PRODUCT: $iid',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
