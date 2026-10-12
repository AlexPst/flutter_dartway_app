import 'dart:io';

import 'package:flutter_dartway_app_flutter/core/app_version.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('the version the app reports is the one in pubspec.yaml', () {
    final version = RegExp(
      r'^version:\s*(\S+)\s*$',
      multiLine: true,
    ).firstMatch(File('pubspec.yaml').readAsStringSync())?.group(1);
    expect(appBuildVersion, version);
  });
}
