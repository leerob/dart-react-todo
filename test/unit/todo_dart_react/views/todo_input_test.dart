import 'dart:html';

import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  group('TodoInput', () {
    test('calls addTodo when enter is pressed', () {
      bool called = false;
      handler(AddTodoCallback) => called = true;

      var renderedInstance = render(TodoInput()..addTodo = handler);
      Element todoInput = getComponentRootDomByTestId(renderedInstance, 'todoInput');
  
      keyDown(todoInput, {'key': 'Enter', 'keyCode': 13});
      expect(called, isTrue);
    });
  });
}