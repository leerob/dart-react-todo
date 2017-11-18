import 'package:test/test.dart';
import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  group('TodoStore', () {
    TodoActions actions;
    TodoStore store;
    Todo todo;

    setUp(() {
      actions = new TodoActions();
      store = new TodoStore(actions);
      todo = new Todo('Testing!');
    });

    test('add, complete, and delete', () async {
      await actions.addTodo(todo);
      expect(store.todos, contains(todo));

      await actions.completeTodo(todo);
      expect(store.todos.last.completed, isTrue);

      await actions.deleteTodo(todo);
      expect(store.todos.contains(todo), isFalse);
    });

    test('clear todo list', () async {
      await actions.clearTodoList();
      expect(store.todos, isEmpty);
    });
  });
}