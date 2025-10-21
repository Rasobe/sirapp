import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexagonal_architecture_template/src/presentation/pages/index.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const MaterialPage<void>(
          child: HomePage(),
        );
      },
    ),
  ],
);
