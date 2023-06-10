//import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: unused_import
import '../widget/boton_prueba.dart';
import '../models/product.dart';
import '../routes/routes.dart';
//import '../routes/routes.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _list = <Product>[];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 1; i++) {
      //final faker = Faker();
      var pepe = "pepe";
      _list.add(
        Product(
          id: 3,
          name: pepe,
          //image: faker.image.image(
          keywords: ['food'],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
/*
            ListView.builder(
          itemBuilder: (_, index) {
            final product = _list[index];
            return Card(
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).pushNamed(Routes.produc,
                      params: {'id': product.id.toString()});
/*
                      GoRouter.of(context).push(
                        '/product/${product.id}',
                      );
*/
                },

                /*
                    Navigator.pushNamed(
                      context,
                      Routes.ypf,
                      arguments: product.id,)
*/
                child: Column(
                  children: [
                    const AspectRatio(
                      aspectRatio: 16 / 9,
                      //child: ,
                    ),
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: _list.length,
        ),

*/

            //anda bien recorda colum y children
            const Text('TITULO'),
            const Text('creativo e impresionante'),

            ///este es un buen boton
            /*
            TextButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(
                  Routes.pae,
                  //params: {'id': product.id.toString()}
                );
              },
              child: const Text("parapae"),
            ),
*/
/* anda mal
            TextButton(
              onPressed: () {
                //GoRouter.of(context).pushNamed(
                // Routes.produc,
                //params: {'id': Product.id.toString()}
                //);
              },
              child: const Text(
                'product',
                style: TextStyle(color: Colors.red),
              ),
            ),
*/
            const SizedBox(
              height: 20,
            ),

            BotonPrueba(
              iconData: Icons.facebook,
              buttonText: 'INICIO',
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
              buttonText: 'CONFIGURACIÓN',
              onTap: () {
                GoRouter.of(context).pushNamed(
                  Routes.pae,
                );
              },
            ),

            //BotonPrueba(text1: 'product'),
          ],
        ),
      ),
    );
  }

  //TextStyle colorrojo() => style: TextStyle(color:Colors.red, );
}





/*

//import 'package:faker/faker.dart';
//import 'package:diosporfa/App/my_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/product.dart';
import '../../router/routes.dart';
//import 'models/product.dart';
//import 'router/routes.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _list = <Product>[];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 1; i++) {
      //final faker = Faker();
      final faker = true;
      var pepe = "pepe";
      _list.add(
        Product(
          id: 3, //i
          name: pepe, //faker.food.dish(),
          //image: faker.image.image(
          keywords: ['food'], //image: 'imagen3',
        ),
      );
    }

    /*
    var i = 1;
    var pepe = "pepe";
    Product(
      id: 0, //i
      name: pepe, //faker.food.dish(),
      keywords: ['food'], //image: 'imagen3',
    );
    */
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (_, index) {
          final product = _list[index];
          return Card(
            child: InkWell(
              onTap: () {
                GoRouter.of(context).pushNamed(Routes.product,
                    params: {'id': product.id.toString()});
                /*
                  GoRouter.of(context).push(
                    '/product/${product.id}',
                  );
                  */
              },
              /*{
                  final myAppState =
                      context.findAncestorStateOfType<MyAppState>();
                  myAppState?.delegate.setNewRoutePath(
                    Uri.parse('/product/${product.id}'),
                  );
                },*/

              /*
                 () {
                  final MyAppstate =
                      context.findAncestorStateOfType<MyAppState>();
                  MyAppstate?.setProductId(product.id);
                },
                */
              /*
                () => Navigator.pushNamed(
                  context,
                  Routes.product,
                  arguments: product.id,
                ),
                */
              child: Column(
                children: [
                  /*
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.network(product.image),
                    ),
                    */
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: _list.length,
      ),
    );
    /*
    Scaffold(
      /*
      appBar:     
      AppBar(
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(
                Routes.profile,
              );
            },
            icon: Icon(Icons.person),
          ),
          SizedBox(
            width: 50,
          ),
        ],
      ),
*/
      body: ListView.builder(
        itemBuilder: (_, index) {
          final product = _list[index];
          return Card(
            child: InkWell(
              onTap: () {
                GoRouter.of(context).pushNamed(Routes.product,
                    params: {'id': product.id.toString()});
                /*
                GoRouter.of(context).push(
                  '/product/${product.id}',
                );
                */
              },
              /*{
                final myAppState =
                    context.findAncestorStateOfType<MyAppState>();
                myAppState?.delegate.setNewRoutePath(
                  Uri.parse('/product/${product.id}'),
                );
              },*/

              /*
               () {
                final MyAppstate =
                    context.findAncestorStateOfType<MyAppState>();
                MyAppstate?.setProductId(product.id);
              },
              */
              /*
              () => Navigator.pushNamed(
                context,
                Routes.product,
                arguments: product.id,
              ),
              */
              child: Column(
                children: [
                  /*
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(product.image),
                  ),
                  */
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: _list.length,
      ),
    );
    */
  }
}
*/
