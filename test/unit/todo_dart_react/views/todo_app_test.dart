import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  TodoActions actions;
  TodoStore store;

  group('TodoApp', () {
    setUp(() {
      actions = TodoActions();
      store = TodoStore(actions);
    });

    test('renders correctly', () {
      var renderedInstance = render((TodoApp()
        ..actions = actions
        ..store = store)());

      expect(renderedInstance, isNotNull);
    });
  });
}
