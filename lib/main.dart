import 'package:flutter/material.dart';
import 'services/Routes/AppRouter.dart';

void main() {
  runApp(const ShopEasyApp());
}

class ShopEasyApp extends StatelessWidget {
  const ShopEasyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ShopEasy',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xffF8F8F8),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffFF6B00),
        ),
        fontFamily: 'Poppins',
      ),
      routerConfig: appRouter,
    );
  }
}