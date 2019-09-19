part of 'components.dart';

class TodoActions {
  final Action<Todo> addTodo = Action<Todo>();
  final Action<Todo> deleteTodo = Action<Todo>();
  final Action<Todo> completeTodo = Action<Todo>();
  final Action<Null> clearTodoList = Action<Null>();
}
