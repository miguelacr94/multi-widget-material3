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
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.routeName,
      builder: (context, state) => AnimatedScreen(),
    ),
    GoRoute(
      path: '/app-tutorial',
      name: AppTutorial.routeName,
      builder: (context, state) => AppTutorial(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.routeName,
      builder: (context, state) => ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar',
      name: SnackbarScreen.routeName,
      builder: (context, state) => SnackbarScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      name: UiControls.routeName,
      builder: (context, state) => UiControls(),
    ),
  ],
);