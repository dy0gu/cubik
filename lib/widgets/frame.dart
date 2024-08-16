import "package:flutter/material.dart";

/// Intended to be a base wrapper around all app screens, although not as a navbar, since
/// navigation buttons are made on a per screen basis due to the low screen complexity.
class Frame extends StatelessWidget {
  final Widget child;

  const Frame({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController vertical = ScrollController();

    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          controller: vertical,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: vertical,
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
