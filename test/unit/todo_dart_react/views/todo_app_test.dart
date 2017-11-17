library todo_dart_react_test;

import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  var renderedInstance;
  TodoActions actions;
  TodoStore store;

  group('TodoApp', () {
    setUp(() {
      actions = new TodoActions();
      store = new TodoStore(actions);
    });

    test('renders correctly', () {
      renderedInstance = render((TodoApp()
        ..actions = actions
        ..store = store)());

      var listGroup = getComponentRootDomByTestId(renderedInstance, 'TodoListGroup');
      expect(listGroup.text, contains('Learn Dart'));
    });
  });
}