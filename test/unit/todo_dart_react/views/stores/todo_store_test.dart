library todo_dart_react_test.stores;

import 'package:test/test.dart';
import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  group('TodoStore', () {
    TodoActions actions;
    TodoStore store;

    setUp(() {
      actions = new TodoActions();
      store = new TodoStore(actions);
    });

    test('addTodo', () async {
      Todo todo = new Todo('Testing!');
      await actions.addTodo(todo);
      expect(store.todos, contains(todo));
    });
  });
}