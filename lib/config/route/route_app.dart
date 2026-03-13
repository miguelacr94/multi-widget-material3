import 'package:go_router/go_router.dart';
import 'package:widget_app/presentations/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonScreen.routeName,
      builder: (context, state) => ButtonScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardScreen.routeName,
      builder: (context, state) => CardScreen(),
    ),
  ],
);