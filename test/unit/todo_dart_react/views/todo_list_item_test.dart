import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';

import 'package:todo_dart_react/src/todo_dart_react/components.dart';

main() {
  group('TodoListItem', () {
    test('calls deleteTodo when button is clicked', () {
      bool called = false;
      Todo todo = Todo('Testing!');
      handler(_) => called = true;

      TestJacket<TodoListItemComponent> jacket = mount((TodoListItem()
        ..deleteTodo = handler
        ..todo = todo)());

      final deleteButtonNode = queryByTestId(jacket.getInstance(), 'deleteTodo');
      click(deleteButtonNode);
      expect(called, isTrue);
    });
  });
}
