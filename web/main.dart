import 'dart:html';

import 'package:over_react/over_react.dart';
import 'package:over_react/react_dom.dart' as react_dom;

import 'package:todo_dart_react/todo_dart_react.dart';

void main() {
  setClientConfiguration();

  TodoActions actions = TodoActions();
  TodoStore store = TodoStore(actions);

  var todoApp = (TodoApp()
    ..actions = actions
    ..store = store)();

  final container = querySelector('#app-container');
  react_dom.render(todoApp, container);
}
