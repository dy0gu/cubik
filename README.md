# It's harder than it looks! 👀⚔️

![logo](assets/images/logo.png)

Cubik is a simple game based on the 8-puzzle dilemma. The goal is to arrange the numbers in ascending order by moving the pieces through the empty space. It seeks to expand on the original concept by using varying board sizes and statistics tracking.

## Development 🛠️

- Clone the repository:

  ```shell
  git clone https://github.com/Dy0gu/Cubik.git
  ```

- Install the dependencies:

  ```shell
  flutter pub get
  ```

- Install git hooks:

  ```shell
  dart run husky install
  ```

- Generate the localization files:

  ```shell
  flutter gen-l10n
  ```

- Run the app on your platform of choice:

  ```shell
  flutter run
  ```

## Build & Deployment 🚀

- For setting the icon and splash screen on all platforms see
  [flutter_launcher_icons](./flutter_launcher_icons.yaml) and [flutter_native_splash](./flutter_native_splash.yaml), respectively.

- Web

  - Create the static files for deployment:

    ```shell
    flutter build web --release
    ```

  - Serve the files using a web server.

- Android

  - Create the app bundle for play store (use `apk` for local):

    ```shell
    flutter build appbundle --release
    ```

    If you get this error:

    ```shell
    Execution failed for task ':app:signReleaseBundle'.
    > A failure occurred while executing com.android.build.gradle.internal.tasks.FinalizeBundleTask$BundleToolRunnable
      > java.lang.NullPointerException (no error message)
    ```

    It means you did not create the `android\key.properties` file correctly. This file is needed for signing the bundle and should be based on the `android\key.properties.example` file.

  - Upload the app bundle to the Google Play Console.

- TODO...
