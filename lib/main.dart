import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home_page/data/repos/home_repo_imple.dart';
import 'package:bookly_app/features/home_page/presentation/manager/featuerd_books_cubit/featuredbooks_cubit.dart';
import 'package:bookly_app/features/home_page/presentation/manager/newest_books_cubit/newestbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedbooksCubit(getIt.get<HomeRepoImple>()..fetchFeaturedBooks())),
        BlocProvider(create: (context)=> NewestbooksCubit(getIt.get<HomeRepoImple>())),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: kPrimaryColor,
            useMaterial3: false,
            brightness: Brightness.dark
        ),
      ),
    );
  }

}

