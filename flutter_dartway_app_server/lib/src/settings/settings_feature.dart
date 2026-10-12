import 'package:dartway_core_server/dartway_core_server.dart';
import 'package:flutter_dartway_app_server/src/settings/settings_handlers.dart';
import 'package:flutter_dartway_app_shared/flutter_dartway_app_shared.dart';

/// App settings an admin edits and every member reads live.
final settingsFeature = DwServerFeature(
  'settings',
  handlers: settingsHandlers,
  channels: [
    DwChannelRule.single(
      FlutterDartwayAppChannel.settings,
      canSubscribe: (ctx) async => true,
    ),
  ],
);
