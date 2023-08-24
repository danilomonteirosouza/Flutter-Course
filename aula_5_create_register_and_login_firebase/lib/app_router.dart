import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:register_and_login/presentation/pages/Home.dart';
import 'package:register_and_login/presentation/pages/login_page.dart';
import 'package:register_and_login/presentation/pages/register_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'register',
          builder: (BuildContext context, GoRouterState state) {
            return const Cadastro();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const Home();
          },
        ),
      ],
    ),
  ],
);
