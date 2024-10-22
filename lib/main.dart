import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/api_service.dart';
import 'package:bookly_app/core/utlis/app_router.dart';
import 'package:bookly_app/core/utlis/service_locator.dart';
import 'package:bookly_app/features/home/data/presentation/manager/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/data/presentation/manager/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/data/presentation/manager/cubits/newest_books_cubit/newest_books_state.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          )..fetchFeaturedBook(),
        ),
        

        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplementation>(),
        ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
