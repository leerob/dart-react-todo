library tool.dev;

import 'package:dart_dev/dart_dev.dart' show TestRunnerConfig, config, dev;

main(List<String> args) async {
  // https://github.com/Workiva/dart_dev

  var directories = ['lib/', 'tool/', 'web/'];
  config.analyze.entryPoints = directories;
  config.format
    ..paths = directories
    ..lineLength = 100;

  config.genTestRunner.configs = <TestRunnerConfig>[
    new TestRunnerConfig(
        genHtml: true,
        directory: 'test/unit',
        filename: 'generated_runner_test',
        dartHeaders: const <String>[
          'import "package:over_react/over_react.dart";',
        ],
        preTestCommands: const <String>[
          'setClientConfiguration();',
          'enableTestMode();',
        ],
        htmlHeaders: const <String>[
          '<script src="packages/react/react_with_addons.js"></script>',
          '<script src="packages/react/react_dom.js"></script>',
        ])
  ];

  config.test
    ..platforms = ['content-shell']
    ..unitTests = ['test/unit/generated_runner_test.dart']
    ..pubServe = true;

  await dev(args);
}
