import 'package:first_project/pages/forgotpassword.dart';
import 'package:first_project/pages/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../pages/loginpage.dart';
import '../user.dart';
import '../pages/homepage.dart';

/// Caches and Exposes a [GoRouter]
final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true,       
    refreshListenable: router,          
   // redirect: router._redirectLogic,       // All the logic is centralized here
    routes: router._routes,           
  );
});
class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen<User?>(
      userProvider, // In our case, we're interested in the log in / log out events.
      (_, __) => notifyListeners(), // Obviously more logic can be added here
    );
  }
  
  List<GoRoute> get _routes => [
        GoRoute(
          name: "loginpage",
          path: '/',
          builder: (context, _) => const LoginPage(),
        ),
        GoRoute(
          name: "homepage",
          path: '/homepage',
          builder: (context, _) => const HomePage(),
        ),
         GoRoute(
          name: "signup",
          path: '/signup',
          builder: (context, _) => const signup(),
        ),
         GoRoute(
          name: "forgotpassword",
          path: '/password',
          builder: (context, _) => const forgotpassword(),
        ),
      ];
}
