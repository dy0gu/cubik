import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:cubik/l10n/app_localizations.dart";
import "package:material_symbols_icons/material_symbols_icons.dart";

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations locale = AppLocalizations.of(context)!;
    ThemeData theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  FloatingActionButton(
                    heroTag: null,
                    child: const Icon(Symbols.arrow_back),
                    onPressed: () => context.go("/"),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        Icon(Symbols.device_unknown,
            size: 60, color: theme.colorScheme.onSurface),
        const SizedBox(height: 15),
        Text(locale.pageNotFound,
            style: theme.textTheme.bodyLarge, textAlign: TextAlign.center),
      ],
    );
  }
}
