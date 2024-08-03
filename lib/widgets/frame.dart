import "package:flutter/material.dart";

/// Wraps [child] with a [Scaffold], [SafeArea], and [Padding].
///
/// Intended to be a base wrap in all app screens, for universal consistency and ease of use.
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
