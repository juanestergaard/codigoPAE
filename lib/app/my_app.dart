import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

//import 'pages/home_view.dart';
//import 'pages/product_view.dart';
import 'routes/router.dart';
//import 'routes/routes.dart';

//import '../routes/app_routes.dart';
//import '../routes/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with RouterMixin {
  //final _router

  /*final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const HomeView(),
      ),
      GoRoute(
          path: '/product/:id',
          builder: (_, state) {
            final id = state.params['id']!;
            return ProductView(id: int.parse(id));
          }),
    ],
  );
*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
    //initialRoute: Routes.pae,
    //routes: appRoutes,
    //);
  }
}


 /*solo hasta el final



// ignore_for_file: prefer_const_constructors
/*
import 'package:diosporfa/App/models/product.dart';
import 'package:diosporfa/App/pages/home_view.dart';
import 'package:diosporfa/App/pages/product_view.dart';
import 'routes/app_routes.dart';
import 'routes/routes.dart';
*/
//import 'package:diosporfa/App/pages/home_view.dart';
//import 'package:diosporfa/App/pages/product_view.dart';
import 'package:diosporfa/App/pages/splash_view.dart';
import 'package:diosporfa/App/router/router.dart';
import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with RouterMixin {
  bool _loading = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _init();
      },
    );
  }

  Future<void> _init() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    if (mounted) {
      setState(() {
        _loading = false;
      });
    }
  }

  /*int? productId;
  void setProductId(int id) {
    setState(() {
      productId = id;
    });
  }
*/
/*
  final delegate = MyRouterDelegate(
    pages: [
      MyPage(
        (_) => HomeView(),
        path: '/',
      ),
      MyPage(
        (data) => ProductView(
            id: int.parse(
          data['id']!,
        )),
        path: '/product/:id',
      ),
    ],
  );
  */
  /*
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const HomeView(),
      ),
      GoRoute(
          path: '/product/:id',
          builder: (_, state) {
            final id = state.params['id']!;
            return ProductView(id: int.parse(id));
          }),
    ],
  ); //es mejor si la definis _router en ves de mandarla directamente
 */

  @override
  Widget build(BuildContext context) {
    /*
    if (_loading) {
      Material(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    */
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 300),
      child: _loading
          ? SplashView()
          /*
          const Material(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
            */
          : MaterialApp.router(
              routerConfig: router,
              /*
        routerDelegate: delegate,
        /*
        MyRouterDelegate(
          pages: [
            MyPage(
              (_) => HomeView(),
              path: '/',
            ),
            MyPage(
              (data) => ProductView(
                  id: int.parse(
                data['id']!,
              )),
              path: '/product/:id',
            ),
    /*
            MaterialPage(child: HomeView(),),
            MaterialPage(child: ProductView(
              id: ,
            ),)
          */
          ],
        ),
    
        */
        routeInformationParser: MyRouterInformationParser(),
    
        //initialRoute: Routes.home,
        //routes: appRoutes,
        /*
        home: Navigator(
          onPopPage: (route, result) {
            if (route.didPop(result)) {
              productId = null;
              return true;
            }
            return false;
            //return route.didPop(result);
            //return true;
          },
          pages: [
            MaterialPage(child: HomeView()),
            if (productId != null)
              MaterialPage(
                //name: ,
                  child: ProductView(
                id: productId!,
              )),
          ],
        ),*/
      */
            ),
    );
  }
}

*/

/*
class MyPage {
  final Widget Function(Map<String, String> data) builder;
  final String path;
  MyPage(this.builder, {required this.path});
}
*/
/*
class MyRouterDelegate extends RouterDelegate<Uri>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final List<MyPage> pages;

  late List<Page> _navigatorPages;

  MyRouterDelegate({
    required this.pages,
  }) {
    final initialPage = pages.firstWhere(
      (element) => element.path == '/',
    );
    _navigatorPages = [
      MaterialPage(
        name: '/',
        child: initialPage.builder(
          {},
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      // ignore: prefer_const_literals_to_create_immutables
      pages: _navigatorPages,
      /*
      [
        MaterialPage(
          child: HomeView(),
        )
      ],
      */
      onPopPage: (route, result) {
        if (route.didPop(result)) {
          _navigatorPages.removeWhere(
            (element) => element.name == route.settings.name,
          ); //true destruyo la pagina bien
          notifyListeners();
          return true;
        }
        return false;
        //return route.didPop(result); //recuperamos el path de la ruta
      },
    );
  }

  @override
  Future<void> setNewRoutePath(Uri configuration) async {
    final path = configuration.path;
    final data = <String, String>{};

    final index = pages.indexWhere(
      (e) {
        if (e.path == path) {
          return true;
        }
        if (e.path.contains('/:')) {
          ///product/123
          final lastIndex = e.path.lastIndexOf('/:');
          final substring = e.path.substring(
            0,
            lastIndex,
          );
          if (path.startsWith(substring)) {
            final key = e.path.substring(
                lastIndex + 2, e.path.length); //recupero id 123 :/ 2 caracteres
            final value = path.substring(lastIndex + 1, path.length);
            data[key] = value;
            return true; //datos dinamicos
          }
        }
        return false;
      },
      //=>e.path==path,
    );
    if (index != -1) {
      print(data);
      _navigatorPages = [
        ..._navigatorPages,
        MaterialPage(
          name: path,
          child: pages[index].builder(data),
        ),
      ];
      /*
      _navigatorPages.add(
        MaterialPage(
          child: pages[index].builder(data),
        ),
      );
      */

      notifyListeners(); //para refrescar
    }

/*
    // TODO: implement setNewRoutePath
    print(configuration); //imprime en consola el path de la ruta
    print(configuration.runtimeType);
    print(configuration.path);
    print(configuration.queryParameters);
    */
  }

  @override
  // TODO: implement currentConfiguration
  Uri? get currentConfiguration => Uri.parse(
        _navigatorPages.last.name ?? '',
      );

  @override
  // TODO: implement navigatorKey
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();
// t es dato generico para arreglar error
//alt+enter
}
*/
/*
class MyRouterInformationParser extends RouteInformationParser<Uri> {
  @override
  Future<Uri> parseRouteInformation(RouteInformation routeInformation) {
    // TODO: implement parseRouteInformation
    /*
    print("emogi ${routeInformation.location}");
    return Future.value("" as t);
    */
    return Future.value(
      Uri.parse(routeInformation.location ?? ''),
    );
    //esto para que tire string vacio
  }

  @override
  RouteInformation? restoreRouteInformation(Uri configuration) {
    // TODO: implement restoreRouteInformation
    //return super.restoreRouteInformation(configuration);
    return RouteInformation(
      location: configuration.toString(),
    );
  }
}
*/