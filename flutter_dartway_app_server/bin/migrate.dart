import 'dart:io';

import 'package:dartway_core_server/dartway_core_server.dart';
import 'package:flutter_dartway_app_server/flutter_dartway_app_server.dart';

/// `dart run bin/migrate.dart <apply|rollback|status|create <name>|check|rehash>`
/// against the database in `DW_DATABASE_*` — on a developer's machine, the one
/// `deploy/config.yaml > local` names — read only by the commands that use it;
/// `rehash` needs none. `create` and `check` work on throwaway databases of
/// their own next to it.
Future<void> main(List<String> args) async {
  exitCode = await DwMigrationCli(
    schema: flutterDartwayAppSchema,
    migrations: appMigrations,
    directory: 'lib/src/migrations',
    environment: DwLocalEnvironment.overlay(Platform.environment),
    modules: {'dw': DwAppServer.frameworkMigrations},
  ).run(args);
}
