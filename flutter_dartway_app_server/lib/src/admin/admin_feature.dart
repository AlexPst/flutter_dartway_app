import 'package:dartway_core_server/dartway_core_server.dart';
import 'package:flutter_dartway_app_server/src/admin/admin_handlers.dart';
import 'package:flutter_dartway_app_server/src/profile/profile_access.dart';
import 'package:flutter_dartway_app_shared/flutter_dartway_app_shared.dart';

/// The admin panel: the members, their roles, the counters.
final adminFeature = DwServerFeature(
  'admin',
  handlers: adminHandlers,
  channels: [
    DwChannelRule.single(
      FlutterDartwayAppChannel.admin,
      canSubscribe: (ctx) => ctx.isAdmin,
    ),
  ],
);
