import 'package:flutter_dartway_app_flutter/core/dw_core.dart';
import 'package:flutter_dartway_app_shared/flutter_dartway_app_shared.dart';

/// The commands the settings page sends.
abstract final class SettingsCommands {
  /// Saves the settings [command] names and leaves the rest, so two admins
  /// editing different settings cannot overwrite each other.
  static Future<DwCallResult<AppSettings>> save(SaveAppSettings command) =>
      dw.command(command);
}
