import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  List<Todo> todos;
  var renderedInstance;

  group('TodoList', () {
    setUp(() {
      todos = [
        new Todo('Learn Dart'),
        new Todo('Learn React'),
        new Todo('????'),
        new Todo('Profit!')
      ];
    });

    test('renders correctly', () {
      handler(AddTodoCallback) => null;

      renderedInstance = render(TodoList()
        ..addTodo = handler
        ..todos = todos);

      var listGroup = getComponentRootDomByTestId(renderedInstance, 'todoListGroup');
      expect(listGroup.children.length, 4);

      TodoInputComponent todoInput = getComponentByTestId(renderedInstance, 'todoInputComponent');
      expect(todoInput.props.addTodo, isNotNull);
    });
  });
}