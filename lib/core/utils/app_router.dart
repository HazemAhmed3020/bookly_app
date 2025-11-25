import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home_page/data/models/books_model.dart';
import 'package:bookly_app/features/home_page/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/home_page/data/repos/home_repo_imple.dart' show HomeRepoImple;
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
          return  BlocProvider(create: (context) => SimilarBooksCubit( getIt.get<HomeRepoImple>(),),
          child:  BookDetailsView(booksModel: state.extra as BooksModel,),
          );
        },
      ),
    ],
  );
}