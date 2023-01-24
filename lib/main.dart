import 'package:conseillettes/pages/calendar/calendar.dart';
import 'package:conseillettes/pages/calendar/calendar_rdv/calendarRdv.dart';
import 'package:conseillettes/pages/ressource/ressource_list/list_details/list_detail.dart';
import 'package:conseillettes/pages/ressource/ressource_list/ressource_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:conseillettes/pages/home/accueil.dart';
import 'package:conseillettes/pages/ressource/ressource.dart';
import 'themes/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const Accueil(title: 'Accueil'),
      ),
      //Changer route
      GoRoute(
        path: '/tableau',
        builder: (BuildContext context, GoRouterState state) =>
            const Accueil(title: 'Accueil'),
      ),
      GoRoute(
        path: '/calendrier',
        builder: (BuildContext context, GoRouterState state) =>
            const Calendar(title: 'Calendrier'),
      ),
      GoRoute(
        path: '/calendrier/rdv',
        builder: (BuildContext context, GoRouterState state) =>
            const CalendarRdv(title: 'Rendez-vous'),
      ),
      //Changer route
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) =>
            const Accueil(title: 'Accueil'),
      ),
      GoRoute(
        path: '/ressources',
        builder: (BuildContext context, GoRouterState state) =>
            const Ressource(title: 'Ressource'),
      ),
      GoRoute(
        path: '/ressources/list',
        builder: (BuildContext context, GoRouterState state) =>
            const RessourceList(title: 'Ressource liste'),
      ),
      GoRoute(
        path: '/ressources/list/detail',
        builder: (BuildContext context, GoRouterState state) =>
            const RessourceListDetail(title: 'Ressource detail'),
      ),
      // GoRoute(
      //   path: '/menu',
      //   builder: (BuildContext context, GoRouterState state) => const Menu(),
      // ),
      // GoRoute(
      //   path: '/login',
      //   builder: (BuildContext context, GoRouterState state) => const Login(),
      // ),
      // GoRoute(
      //     path: '/drugs/:id',
      //     builder: (BuildContext context, GoRouterState state) {
      //       return DetailsScreen(id: state.params['id']!);
      //     }),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Conseillettes',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor2,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      routerDelegate: _router.routerDelegate,
    );
  }
}
