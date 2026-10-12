import 'package:flutter_dartway_app_shared/flutter_dartway_app_shared.dart';

/// The app's live channels, as handlers publish to them.
///
/// Who may hear each is declared with the feature that owns it
/// (`DwServerFeature(channels: …)`), and holds for any caller, not only for
/// the screen that subscribes: it is asked when a connection subscribes, and
/// for every channel a command publishes to, whether the command's response
/// carries it. Everything published to a channel is readable by everyone its
/// rule allows.
abstract final class AppChannels {
  static const admin = DwLiveChannel(FlutterDartwayAppChannel.admin);
  static const settings = DwLiveChannel(FlutterDartwayAppChannel.settings);

  /// Where [accountId]'s own profile hears a change to it, whoever made it.
  static DwLiveChannel profileOf(int accountId) =>
      DwLiveChannel.forAccount(FlutterDartwayAppChannel.profile, accountId);
}
