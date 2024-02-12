import "package:flutter/material.dart";

/// Wraps [child] with a [Scaffold], [SafeArea], and [Padding].
///
/// Intended to be a base wrap in all app screens, for universal consistency and ease of use.
class Framed extends StatelessWidget {
  final Widget child;

  const Framed({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(child: child),
        ),
      ),
    );
  }
}
