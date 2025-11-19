
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/home_page/presentation/view/book_details_view.dart';
import '../../features/home_page/presentation/view/home_view.dart';
import '../../features/splash/views/splash_view.dart';

abstract class AppRouter{

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/HomeView',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/BookDetailsView',
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsView();
        },
      ),
    ],
  );
}