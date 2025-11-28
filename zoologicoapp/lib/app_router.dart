import 'package:go_router/go_router.dart';

import 'pages/workshop_home_page.dart';
import 'pages/animales_page.dart';
import 'pages/calculo_page.dart';
//import 'pages/dinamico.dart';
//import 'pages/favorito.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const WorkshopHomePage(),
    ),
    GoRoute(
      path: '/labor',
      builder: (_, __) => const AnimalesPage(),
    ),
    
    GoRoute(
      path: '/parts',
      builder: (_, __) => const CalculoPage(),
    ),
/*

    GoRoute(
      path: '/service',
      builder: (_, __) => const DinamicoPage(),
    ),
    GoRoute(
      path: '/favorito',
      builder: (_, __) => const FavoritoPage(),
    ),
*/
  ],
);
