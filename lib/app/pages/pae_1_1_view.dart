import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widget/boton_prueba.dart';
import '../routes/routes.dart';

// ignore: camel_case_types
class Pae_1_1_View extends StatelessWidget {
  const Pae_1_1_View({
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
              buttonText: 'VALVULAS',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.pae_1_1_V1,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'LINEAS',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.pae_1_1_L1,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'EQUIPOS',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.inicio,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'INSTRUMENTOS',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.pae_1_1_N1,
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
