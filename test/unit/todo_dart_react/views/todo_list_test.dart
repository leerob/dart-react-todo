import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  List<Todo> todos;
  TestJacket<TodoListComponent> jacket;

  group('TodoList', () {
    setUp(() {
      todos = [
        Todo('Learn Dart'),
        Todo('Learn React'),
        Todo('????'),
        Todo('Profit!')
      ];
    });

    tearDown(() {
      todos = null;
    });

    test('renders correctly', () {
      handler(_) => null;

      jacket = mount((TodoList()
        ..addTodo = handler
        ..todos = todos)());

      final listGroupNode = queryByTestId(jacket.getInstance(), 'todoListGroup');
      expect(listGroupNode.children.length, 4);

      final todoInputProps = getPropsByTestId(jacket.getInstance(), 'todoInputComponent') as TodoInputProps;
      expect(todoInputProps.addTodo, isNotNull);
    });
  });
}
