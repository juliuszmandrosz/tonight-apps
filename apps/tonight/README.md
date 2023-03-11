# raver

A new Flutter project.

## Getting Started

1. Before running app run get command:

> flutter pub get

2. Generate code with build runner:

> flutter packages pub run build_runner build --delete-conflicting-outputs

3. Create a .env file in the root of your project with content:

> GOOGLE_API_KEY=''
>
>ALGOLIA_APP_ID=''
>
>ALGOLIA_API_KEY=''

4. Set api codes in following files

### Google API

> /ios/Runner/AppDelegate.swift
>
> /android/app/src/main/AndroidManifest.xml

*Credentials for test user*
> email: test@test.pl
>
> password: testerek

