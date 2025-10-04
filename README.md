# Tonight Apps

## Overview

Tonight is a monorepo containing multiple Flutter applications for managing nightlife events,
venues, and user engagement:

- **Tonight** – Main consumer app for discovering events and clubs
- **Tonight Partners** – Partner management application for venue owners
- **Tonight Scanner** – Event check-in and ticket scanning application

## Tech Stack

- **Framework**: Flutter & Dart
- **Architecture**: Clean Architecture with Domain-Driven Design
- **State Management**: Bloc/Cubit
- **Backend**: Firebase (Firestore, Auth, Cloud Functions)
- **Payments**: Stripe integration
- **Monorepo**: Melos for workspace management
- **CI/CD**: GitHub Actions with Fastlane

## Features

- **Event Discovery** – Browse and search nightlife events
- **Venue Management** – Detailed club information and reviews
- **Ticketing System** – Purchase and manage event tickets
- **Social Features** – User interactions and event participation
- **Rewards System** – Gamification with challenges and coins
- **Multi-platform** – Native Android and iOS applications

## Getting Started

### Prerequisites

- Flutter SDK (stable channel)
- Dart SDK
- Melos CLI

### Installation

1. Install Melos:
   ```bash
   dart pub global activate melos
   export PATH="$PATH":"$HOME/.pub-cache/bin"
   ```

2. Bootstrap the monorepo:
   ```bash
   melos bootstrap
   ```

3. Configure Firebase (per app):
   ```bash
   cd apps/tonight
   dart pub global activate flutterfire_cli
   flutterfire configure
   ```

4. Set up environment variables (create `.env` file in each app directory – see `.env.example`)

### Build

```bash
# Get dependencies
flutter pub get

# Generate code
flutter pub run build_runner build --delete-conflicting-outputs

# Run app
flutter run
```

## Development

This project uses:

- **Clean Architecture** for separation of concerns
- **Domain-Driven Design** for business logic
- **Freezed** for immutable models
- **Build Runner** for code generation

## License

Copyright © 2025 Juliusz Mandrosz. All rights reserved.

This repository is publicly available solely for educational and portfolio review purposes
(e.g. graduate program application review).

## Contact

**Juliusz Mandrosz**  
📧 Contact for licensing inquiries

