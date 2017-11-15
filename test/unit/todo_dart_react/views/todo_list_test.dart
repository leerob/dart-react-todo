library todo_dart_react_test;

import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  var renderedInstance;
  ToDoActions actions;
  ToDoStore store;

  group('ToDoList', () {
    setUp(() {
      actions = new ToDoActions();
      store = new ToDoStore(actions);
    });

    test('renders correctly', () {
      renderedInstance = render((ToDoList()
        ..actions = actions
        ..store = store)());

      var listGroup = getComponentRootDomByTestId(renderedInstance, 'todoListGroup');
      expect(listGroup.text, contains('Learn Dart'));
    });
  });
}