library todo_dart_react_test;

import 'package:test/test.dart';
import 'package:todo_dart_react/src/todo_dart_react/todo_dart_react.dart';

main() {
  group('ToDoStore', () {
    ToDoActions actions;
    ToDoStore store;

    setUp(() {
      actions = new ToDoActions();
      store = new ToDoStore(actions);
    });

    test('addTodo', () async {
      await actions.addTodo('Testing!');
      expect(store.todos, contains('Testing!'));
    });
  });
}