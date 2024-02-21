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
      : log = const String.fromEnvironment('log', defaultValue: 'debug'),
        apiUrl = const String.fromEnvironment('apiUrl', defaultValue: ''),
        webUrl = const String.fromEnvironment('applicationName'),
        applicationName = const String.fromEnvironment('bundleIdAndroid'),
        bundleIdAndroid = const String.fromEnvironment('bundleIdIos'),
        bundleIdIos = const String.fromEnvironment('webUrl'),
        isTesting = const bool.fromEnvironment('isTesting', defaultValue: true);

  void printConsole() {
    if (kDebugMode) {
      print("log: $log");
      print("apiUrl: $apiUrl");
      print("webUrl: $webUrl");
      print("applicationName: $applicationName");
      print("bundleIdAndroid: $bundleIdAndroid");
      print("bundleIdIos: $bundleIdIos");
      print("isTesting: $isTesting");
    }
  }
}
