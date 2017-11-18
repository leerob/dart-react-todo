import 'dart:html';

import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  group('TodoListItem', () {
    test('calls deleteTodo when button is clicked', () {
      bool called = false;
      Todo todo = new Todo('Testing!');
      handler(DeleteTodoCallback) => called = true;

      var renderedInstance = render(TodoListItem()
        ..deleteTodo = handler
        ..todo = todo);
          
      Element deleteButton = getComponentRootDomByTestId(renderedInstance, 'deleteTodo');
      click(deleteButton);
      expect(called, isTrue);
    });
  });
}