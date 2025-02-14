import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/core/utils/route_manger.dart';
import 'package:flutter_application_1/core/utils/service_locator.dart';
import 'package:flutter_application_1/features/home/data/repo/home_repo_implement.dart';
import 'package:flutter_application_1/features/home/presenation/manger/feature_book_cubit/feature_book_cubit.dart';
import 'package:flutter_application_1/features/home/presenation/manger/new_books_cubit/new_books_cubit.dart';
import 'package:flutter_application_1/splash/presentation/view/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';


void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>FeatureBooksCubit(
          getIt.get<HomeRepoImpelment>()
        )
        ..fetchFeaturedBook()
        ),
        BlocProvider(create: (context)=>NewBooksCubit(
          getIt.get<HomeRepoImpelment>()
        )..fetchBestSeller()
        )
      ],
      child: GetMaterialApp(
        initialRoute: '/splash',
        onGenerateRoute: AppRouter().onGenerateRoute,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor:primaryColor,),
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
      
  }
}

