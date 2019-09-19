part of 'components.dart';

class TodoActions {
  final Action<Todo> addTodo = new Action<Todo>();
  final Action<Todo> deleteTodo = new Action<Todo>();
  final Action<Todo> completeTodo = new Action<Todo>();
  final Action<Null> clearTodoList = new Action<Null>();
}
