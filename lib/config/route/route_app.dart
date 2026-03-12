import 'package:go_router/go_router.dart';
import 'package:widget_app/presentations/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => ButtonScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => CardScreen(),
    ),
  ],
);