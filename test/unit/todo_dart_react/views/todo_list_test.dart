import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  List<Todo> todos;
  var renderedInstance;

  group('TodoList', () {
    setUp(() {
      todos = [
        Todo('Learn Dart'),
        Todo('Learn React'),
        Todo('????'),
        Todo('Profit!')
      ];
    });

    test('renders correctly', () {
      handler(AddTodoCallback) => null;

      renderedInstance = render(TodoList()
        ..addTodo = handler
        ..todos = todos);

      var listGroup = getComponentRootDomByTestId(renderedInstance, 'todoListGroup');
      expect(listGroup.children.length, 4);

      final todoInput = getComponentByTestId(renderedInstance, 'todoInputComponent') as TodoInputComponent;
      expect(todoInput.props.addTodo, isNotNull);
    });
  });
}
