import 'package:bnb/screens/BookingDetailsScreen.dart';
import 'package:bnb/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
     GoRoute(
      path: '/booking-details',
      name: 'booking-details',
      builder: (BuildContext context, GoRouterState state) {
        return const BookingDetailsScreen();
      },
    ),
  ]);
}
