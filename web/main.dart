import 'dart:html';

import 'package:react/react_dom.dart' as react_dom;
import 'package:react/react_client.dart' as react_client;

import 'package:todo_dart_react/todo_dart_react.dart';

void main() {
  react_client.setClientConfiguration();

  ToDoActions actions = new ToDoActions();
  ToDoStore store = new ToDoStore(actions);

  var todoList = (ToDoList()
    ..actions = actions
    ..store = store)();

  final container = querySelector('#app-container');
  react_dom.render(todoList, container);
}
