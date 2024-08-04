import "package:flutter/material.dart";
import "package:cubik/app.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:path_provider/path_provider.dart";
import "package:flutter/foundation.dart";
import "package:url_strategy/url_strategy.dart";

void main() async {
  // Ensures that all widget render logic is initialized before continuing
  WidgetsFlutterBinding.ensureInitialized();

  // Hides the # in the web version URL, the <base> tag in the web index.html file
  // must be set with href="/", for this to work correctly
  setPathUrlStrategy();

  // Initializes the storage for bloc persistence
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  runApp(const App());
}
