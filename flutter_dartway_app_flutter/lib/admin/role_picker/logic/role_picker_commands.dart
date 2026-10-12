import 'package:flutter_dartway_app_flutter/core/dw_core.dart';
import 'package:flutter_dartway_app_shared/flutter_dartway_app_shared.dart';

/// The commands the role picker sends.
abstract final class RolePickerCommands {
  /// Gives [user] [role]. The row changes when the answer carries the updated
  /// profile.
  static Future<DwCallResult<UserProfile>> changeRole(
    UserProfile user,
    UserRole role,
  ) => dw.command(ChangeUserRole(profileId: user.id, role: role));
}
