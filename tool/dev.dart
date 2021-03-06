library tool.dev;

import 'package:dart_dev/dart_dev.dart' show config, dev;

main(List<String> args) async {
  // https://github.com/Workiva/dart_dev

  var directories = ['lib/', 'tool/', 'web/'];
  config.analyze.entryPoints = directories;

  config.format
    ..paths = directories
    ..lineLength = 100;

  config.test
    ..platforms = ['chrome']
    ..unitTests = ['test/unit/generated_runner_test.dart'];

  await dev(args);
}
