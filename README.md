# fl_example_env_from_file

A Flutter project that able to handel deffrent development env like Production, Development and so on... , base on json files.


## Getting Started
Tn this project just have a json file for sample, but we can add multiple configuration json file or [.env](https://github.com/flutter/flutter/pull/128668) for diffrent runnig enviroments.

### Compilation environment declarations
run project by this command on terminal.
<br>
    `flutter run --dart-define-from-file=env.json` 
<br>
this command use json.env file as dart-define config. and as [dart documents](https://dart.dev/guides/environment-declarations), these configs available over project platforms and in dart files.
#### Android Studio
if you want to add this configuration in android studio setting, at `Run configuration` edit `additional run args` section, and add this `--dart-define-from-file=env.json` in to it.  
#### Vscode
if you want to add this configuration in VScode setting, at `./.vscode/launch.json` update configurations and add `toolArgs:["--dart-define-from-file",env.json]` to each run profile you like.


### Use in Android

use these configs at [gradle](./android/app/build.gradle) and [manifest](./android/app/src/main/AndroidManifest.xml), as gradle prop and define some string res and use them at android native and manifest file.

## Refrences
- [gboliknow medium](https://gboliknow.medium.com/efficiently-configuring-your-flutter-app-with-dart-define-from-file-604d9bd49e7b)

