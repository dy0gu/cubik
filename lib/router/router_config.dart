import "package:cubik/screens/not_found_screen.dart";
import "package:cubik/widgets/frame.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:cubik/screens/home_screen.dart";
import "package:cubik/screens/settings_screen.dart";
import "package:cubik/screens/profile_screen.dart";

// Custom transitions are unused because they currently break with shell routes:
// Issues: https://github.com/flutter/flutter/issues/126682 & https://github.com/flutter/flutter/issues/116127
// PR: https://github.com/flutter/flutter/pull/139078
// import "package:cubik/router/router_transitions.dart";

/// The router configuration for the [MaterialApp.router].
final GoRouter routerConfig = GoRouter(
  initialLocation: "/",
  routes: [
    ShellRoute(
        pageBuilder: (context, state, child) => MaterialPage(
              child: Frame(child: child),
            ),
        routes: [
          GoRoute(
            path: "/",
            pageBuilder: (context, state) =>
                const MaterialPage(child: HomeScreen()),
          ),
          GoRoute(
            path: "/settings",
            pageBuilder: (context, state) => const MaterialPage(
              child: SettingsScreen(),
            ),
          ),
          GoRoute(
            path: "/profile",
            pageBuilder: (context, state) => const MaterialPage(
              child: ProfileScreen(),
            ),
          ),
          GoRoute(
            path: "/:notfound",
            pageBuilder: (context, state) => const MaterialPage(
              child: NotFoundScreen(),
            ),
          ),
        ]),
  ],
);
