
import 'package:go_router/go_router.dart';

import '../../views/homescreen.dart';
import '../../views/login.dart';
import '../../models/productModel.dart';
import '../../views/productDetailscreen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: "/",

  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: "/home",
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
  path: '/product',
  builder: (context, state) {
    final product = state.extra as ProductModel;

    return ProductDetailsScreen(
      product: product,
    );
  },
),
  ],
);