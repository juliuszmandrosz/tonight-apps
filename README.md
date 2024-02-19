# Tonight Apps

Tonight platform for Android and iOS

## Getting Started

```bash
dart pub global activate melos
export PATH="$PATH":"$HOME/.pub-cache/bin"
melos bs
```

## Change Environment for specific app e.g. Tonight

1. Run commands

```bash
cd apps/tonight
dart pub global activate flutterfire_cli
export PATH="$PATH":"$HOME/.pub-cache/bin"
flutterfire configure
```

2. Choose env variables in .env file

## Build and regenerate files

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
```