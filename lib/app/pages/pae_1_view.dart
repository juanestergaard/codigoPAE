import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widget/boton_prueba.dart';
import '../routes/routes.dart';

// ignore: camel_case_types
class Pae_1_View extends StatelessWidget {
  const Pae_1_View({
    super.key,
    //required this.id,
  });
  //final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotonPrueba(
              iconData: Icons.h_mobiledata,
              buttonText: 'ES-U-002 y ES-U-001',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.pae_1_1,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'KKS',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.pae_1_2,
                );
              },
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
