import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widget/boton_prueba.dart';
import '../routes/routes.dart';

class InicioView extends StatelessWidget {
  const InicioView({
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
              buttonText: 'codficación de PAE',
              onTap: () {
                //print('Share Page');
                GoRouter.of(context).pushNamed(
                  Routes.pae_1,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'codificación de YPF',
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
          ],
        ),
      ),
    );
  }
}
