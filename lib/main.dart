import 'package:bnb/navigation/app_router.dart';
import 'package:bnb/shared/themes/Colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: appRed),
        useMaterial3: true,
      ),
     routerConfig:AppRouter().router,
    );
  }
}

