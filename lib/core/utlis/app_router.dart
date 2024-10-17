import 'package:bookly_app/features/home/data/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

  static const kHomeView = '/homeView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),

    GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    ),
  ],
);
}