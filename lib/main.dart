import "package:flutter/material.dart";
import "package:cubik/app.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:path_provider/path_provider.dart";
import "package:flutter/foundation.dart";

void main() async {
  // Ensures that all widget render logic is initialized before continuing
  WidgetsFlutterBinding.ensureInitialized();

  // Initializes the storage for bloc persistence
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  runApp(const App());
}
