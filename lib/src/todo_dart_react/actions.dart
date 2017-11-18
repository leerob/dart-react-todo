part of todo_dart_react;

class TodoActions {
  final Action<Todo> addTodo = new Action<Todo>();
  final Action<Todo> deleteTodo = new Action<Todo>();
  final Action<Todo> completeTodo = new Action<Todo>();
  final Action clearTodoList = new Action();
}
