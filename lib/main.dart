import "package:flutter/material.dart";
import "package:cubik/app.dart";
import "package:url_strategy/url_strategy.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:path_provider/path_provider.dart";
import "package:flutter/foundation.dart";

void main() async {
  // Ensures that the Flutter Widgets library is initialized before any Flutter code runs
  WidgetsFlutterBinding.ensureInitialized();

  // Hides the # in the web version URL
  setPathUrlStrategy();

  // Initializes the storage for bloc persistence
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  // Start the app
  runApp(const App());
}
