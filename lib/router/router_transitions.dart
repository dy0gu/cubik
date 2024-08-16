import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

/// Custom transition disabler to be used with a [Router] page builder.
CustomTransitionPage noTransitionBuilder<T>({
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        child,
  );
}

/// Custom fade transition builder to be used with a [Router] page builder.
CustomTransitionPage fadeTransitionBuilder<T>({
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

/// Custom rotation transition builder to be used with a [Router] page builder.
CustomTransitionPage rotationTransitionBuilder<T>({
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        RotationTransition(
      turns: animation,
      child: child,
    ),
  );
}

/// Custom slide transition builder to be used with a [Router] page builder.
CustomTransitionPage slideTransitionBuilder<T>({
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    ),
  );
}

/// Custom scale transition builder to be used with a [Router] page builder.
CustomTransitionPage scaleTransitionBuilder<T>({
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        ScaleTransition(
      scale: animation,
      child: child,
    ),
  );
}
