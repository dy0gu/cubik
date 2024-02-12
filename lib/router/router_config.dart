import "package:cubik/screens/not_found_screen.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:cubik/router/router_transitions.dart";
import "package:cubik/screens/home_screen.dart";
import "package:cubik/screens/settings_screen.dart";
import "package:cubik/screens/profile_screen.dart";
import "package:cubik/screens/error_screen.dart";

/// The router configuration for the [MaterialApp.router].
final GoRouter routerConfig = GoRouter(
  initialLocation: "/",
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      pageBuilder: (context, state) => fadeTransitionBuilder(
        context: context,
        state: state,
        child: const HomeScreen(),
      ),
    ),
    GoRoute(
      path: "/settings",
      pageBuilder: (context, state) => fadeTransitionBuilder(
        context: context,
        state: state,
        child: const SettingsScreen(),
      ),
    ),
    GoRoute(
      path: "/profile",
      pageBuilder: (context, state) => fadeTransitionBuilder(
        context: context,
        state: state,
        child: const ProfileScreen(),
      ),
    ),
    GoRoute(
      path: "/:notfound",
      pageBuilder: (context, state) => fadeTransitionBuilder(
        context: context,
        state: state,
        child: const NotFoundScreen(),
      ),
    ),
  ],
  errorPageBuilder: (context, state) => fadeTransitionBuilder(
    context: context,
    state: state,
    child: const ErrorScreen(),
  ),
);
