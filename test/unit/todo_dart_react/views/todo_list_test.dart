library vending_machine_view_test;

import 'dart:html';

import 'package:react/react.dart' as react;
import 'package:over_react/over_react.dart';
import 'package:over_react_test/over_react_test.dart';
import 'package:test/test.dart';
import 'package:todo_dart_react/src/todo_dart_react/todo_dart_react.dart';

main() {
  group('ToDo', () {
    setUp(() {
      ReactElement element = ToDoList()();
      react.Component component = renderAndGetComponent(element);
    });
  });
}