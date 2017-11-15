part of todo_dart_react;

class ToDoStore extends Store {
  ToDoStore(ToDoActions actions) : _actions = actions {
    _todos = ['Learn Dart', 'Learn React', '????', 'Profit!'];
    triggerOnAction(_actions.addTodo, _addTodo);
  }

  final ToDoActions _actions;

  List<String> _todos = [];
  List<String> get todos => _todos;

  void _addTodo(String todo) {
    _todos.add(todo);
  }
}
