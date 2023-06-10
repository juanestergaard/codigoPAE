//import 'dart:async';

//import 'package:diosporfa/App/global/session_controller.dart';
//import 'package:diosporfa/App/my_app.dart';
//import 'package:diosporfa/App/pages/error_view.dart';
//import 'package:diosporfa/App/pages/home/widget/scaffolt.dart';
//import 'package:diosporfa/App/router/routes.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:pae1/app/pages/Linea/pae_1_1_L3_view.dart';
import 'package:pae1/app/pages/valvulas/pae_1_1_V1_view.dart';
import 'package:pae1/app/pages/pae_1_view.dart';

import '../my_app.dart';
import '../pages/home_view.dart';
import '../pages/inicio_view.dart';
import '../pages/Linea/pae_1_1_L1_view.dart';
import '../pages/Linea/pae_1_1_L2_view.dart';
import '../pages/Linea/pae_1_1_L4_view.dart';
import '../pages/Linea/pae_1_1_L5_view.dart';
import '../pages/Linea/pae_1_1_L6_view.dart';
import '../pages/Linea/pae_1_1_L7_view.dart';
import '../pages/instrumentos/pae_1_1_N1_view.dart';
import '../pages/instrumentos/pae_1_1_N2_view.dart';
import '../pages/instrumentos/pae_1_1_N3_view.dart';
import '../pages/instrumentos/pae_1_1_N4_view.dart';
import '../pages/valvulas/pae_1_1_V2_view.dart';
import '../pages/valvulas/pae_1_1_V3_view.dart';
import '../pages/valvulas/pae_1_1_V4_view.dart';
import '../pages/valvulas/pae_1_1_V5_view.dart';
import '../pages/valvulas/pae_1_1_V6_view.dart';
import '../pages/pae_1_1_view.dart';
import '../pages/pae_1_2_view.dart';
import '../pages/pae_view.dart';
import '../pages/product_view.dart';
import '../rojo.dart';
import 'routes.dart';
//import 'package:provider/provider.dart';

//import '../pages/home_view.dart';
//import '../pages/home/home_view.dart';
//import '../pages/home/product_view.dart';
//import '../pages/profile_view.dart';
//import '../pages/sign_in_view.dart';

mixin RouterMixin on State<MyApp> {
  final _router = GoRouter(
    initialLocation: '/',
    //errorBuilder: (_, state) => ErrorView(goRouterState: state),
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return //HomeScaffold(child: child);

              Scaffold(
            /*
            appBar: AppBar(
              actions: [ 
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pushNamed(
                      Routes.pae,///////////////////////aca
                    );
                  },
                  icon: const Icon(Icons.person),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
            */
            body: child,
          );
        },
        routes: [
          GoRoute(
            name: Routes.home,
            path: '/',
            builder: (_, __) => const HomeView(),
          ),
          GoRoute(
            name: Routes.produc,
            path: '/product/:id',
            builder: (_, state) {
              final id = state.params['id']!; //para obtener datos
              return ProductView(
                iid: int.parse(id), //parse string a int
              );
            },
/*
            redirect: (context, state) => autGuard(
                context: context,
                state: state,
                callBackURL: '/product/${state.params['id']}'),
*/
          ),
          GoRoute(
            name: Routes.pae,
            path: '/pae',
            builder: (_, __) {
              //final id = state.params['id']!; //para obtener datos
              return const PaeView(
                  //id: int.parse(id), //parse string a int
                  );
            },
          ),
          GoRoute(
            name: Routes.inicio,
            path: '/inicio',
            builder: (_, __) {
              return const InicioView();
            },
          ),
          GoRoute(
            name: Routes.pae_1,
            path: '/pae_1',
            builder: (_, __) {
              return const Pae_1_View();
            },
          ),
          GoRoute(
            name: Routes.pae_1_1,
            path: '/pae_1_1',
            builder: (_, __) {
              return const Pae_1_1_View();
            },
            pageBuilder: (context, state) => CustomTransitionPage<void>(
              key: state.pageKey,
              child: const Pae_1_1_View(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      FadeTransition(opacity: animation, child: child),
            ),
          ),
          //https://stackoverflow.com/questions/71636397/set-default-transition-for-go-router-in-flutter
          //https://pub.dev/documentation/go_router/latest/topics/Transition%20animations-topic.html
          GoRoute(
            name: Routes.pae_1_1_L1,
            path: '/pae_1_1_L1',
            builder: (_, __) {
              return const Pae_1_1_L1_View();
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_L2,
            path: '/pae_1_1_L2/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_L2_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_L3,
            path: '/pae_1_1_L3/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_L3_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_L4,
            path: '/pae_1_1_L4/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_L4_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_L5,
            path: '/pae_1_1_L5/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_L5_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_L6,
            path: '/pae_1_1_L6/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_L6_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_L7,
            path: '/pae_1_1_L7/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_L7_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_V1,
            path: '/pae_1_1_V1',
            builder: (_, __) {
              //final id = state.params['id']!; //para obtener datos
              return const Pae_1_1_V1_View(
                  //id: int.parse(id), //parse string a int
                  );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_V2,
            path: '/pae_1_1_V2/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_V2_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_V3,
            path: '/pae_1_1_V3/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_V3_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_V4,
            path: '/pae_1_1_V4/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_V4_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_V5,
            path: '/pae_1_1_V5/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_V5_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_V6,
            path: '/pae_1_1_V6/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_V6_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_N1,
            path: '/pae_1_1_N1',
            builder: (_, __) {
              //final id = state.params['id']!; //para obtener datos
              return const Pae_1_1_N1_View(
                  //id: int.parse(id), //parse string a int
                  );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_N2,
            path: '/pae_1_1_N2/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_N2_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_N3,
            path: '/pae_1_1_N3/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_N3_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_1_N4,
            path: '/pae_1_1_N4/:id',
            builder: (context, state) {
              final id = state.params['id']!;
              List sample = state.extra as List;
              return Pae_1_1_N4_View(
                list: sample,
                id: id,
              );
            },
          ),
          GoRoute(
            name: Routes.pae_1_2,
            path: '/pae_1_2',
            builder: (_, __) {
              return const Pae_1_2_View();
            },
          ),
          GoRoute(
            name: Routes.rojo,
            path: '/rojo',
            builder: (_, __) {
              return const MyStatefulWidget();
            },
          ),
        ],
      ),
      /*
      GoRoute(
        name: Routes.home,
        path: '/',
        builder: (_, __) => const HomeView(),
      ),
      */

/* no las voy a usar
      GoRoute(
        name: Routes.confi,
        path: '/profile',
        builder: (_, __) => const ProfileView(),
        redirect: (context, state) =>
            autGuard(context: context, state: state, callBackURL: '/profile'),
        /*
            async {
              final isSignedIn = context.read<SessionController>().isSignedIn;
              if (isSignedIn) {
                return null;
              }
              return '/sign-in?CallBackURL=/profile';
            }
            */
      ),
      GoRoute(
        name: Routes.signIn,
        path: '/sign-in',
        builder: (_, state) {
          final callbackURL = state.queryParams['CallBackURL'];
          return SignInView(
            callBackURL: callbackURL ?? '/',
          );
        },
        redirect: (context, state) {
          final isSignedIn = context.read<SessionController>().isSignedIn;
          if (isSignedIn) {
            return '/';
          }
          return null;
        },
      ),



      */
/*
      GoRoute(
        name: Routes.product,
        path: '/product/:id',
        builder: (_, state) {
          final id = state.params['id']!;
          return ProductView(
            id: int.parse(id),
          );
        },
        redirect: (context, state) => autGuard(
            context: context,
            state: state,
            callBackURL: '/product/${state.params['id']}'),
      ),
      */
    ],
    /*
    redirect: (context, state) => autGuard(
        context: context,
        state: state,
        callBackURL: '/product/${state.params['id']}'),
        */
    /*
       async {
        final isSignedIn = context.read<SessionController>().isSignedIn;
        if (isSignedIn) {
          return null;
        }
        return '/sign-in?CallBackURL=/product/${state.params['id']}';
      }
      */
  );
  GoRouter get router =>
      _router; //es mejor si la definis _router en ves de mandarla directamente
}

/*
FutureOr<String?> autGuard(
    {required BuildContext context,
    required GoRouterState state,
    required String callBackURL}) async {
  final isSignedIn = context.read<SessionController>().isSignedIn;
  if (isSignedIn) {
/*
    await Future.delayed(
      const Duration(seconds: 3),
      );
*/
    return null;
  }
  return '/sign-in?CallBackURL=/product/$callBackURL';
}
*/