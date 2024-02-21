// ignore_for_file: unnecessary_const

import 'package:flutter/foundation.dart';

final class Env {
  final String log;
  final String apiUrl;
  final String webUrl;
  final String applicationName;
  final String bundleIdAndroid;
  final String bundleIdIos;
  final bool isTesting;

  const Env()
      : log = const String.fromEnvironment('log',
            defaultValue: 'Not run by --dart-define-from-file'),
        apiUrl = const String.fromEnvironment('apiUrl',
            defaultValue: 'Not run by --dart-define-from-file'),
        webUrl = const String.fromEnvironment('applicationName',
            defaultValue: 'Not run by --dart-define-from-file'),
        applicationName = const String.fromEnvironment('bundleIdAndroid',
            defaultValue: 'Not run by --dart-define-from-file'),
        bundleIdAndroid = const String.fromEnvironment('bundleIdIos',
            defaultValue: 'Not run by --dart-define-from-file'),
        bundleIdIos = const String.fromEnvironment('webUrl',
            defaultValue: 'Not run by --dart-define-from-file'),
        isTesting = const bool.fromEnvironment('isTesting', defaultValue: true);

  String printConsole() {
    if (kDebugMode) {
      print("log: $log");
      print("apiUrl: $apiUrl");
      print("webUrl: $webUrl");
      print("applicationName: $applicationName");
      print("bundleIdAndroid: $bundleIdAndroid");
      print("bundleIdIos: $bundleIdIos");
      print("isTesting: $isTesting");
    }

    return '''
 log: $log,
 apiUrl: $apiUrl,
 webUrl: $webUrl,
 applicationName: $applicationName,
 bundleIdAndroid: $bundleIdAndroid,
 bundleIdIos: $bundleIdIos,
 isTesting: $isTesting,
    ''';
  }
}
