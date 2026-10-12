import 'package:dartway_core_server/dartway_core_server.dart';
import 'package:flutter_dartway_app_server/src/profile/profile_handlers.dart';
import 'package:flutter_dartway_app_shared/flutter_dartway_app_shared.dart';

/// A member's own profile: reading and changing it, and hearing it change.
final profileFeature = DwServerFeature(
  'profile',
  handlers: profileHandlers,
  channels: [
    // "My" channel: a member subscribes to their own account's only.
    DwChannelRule.ofCaller(FlutterDartwayAppChannel.profile),
  ],
);
