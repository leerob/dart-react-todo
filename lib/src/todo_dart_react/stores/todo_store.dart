part of todo_dart_react;

class TodoStore extends Store {
  TodoStore(TodoActions actions) : _actions = actions {
    _todos = [
      new Todo('Learn Dart'),
      new Todo('Learn React'),
      new Todo('????'),
      new Todo('Profit!')
    ];
    triggerOnAction(_actions.addTodo, _addTodo);
    triggerOnAction(_actions.deleteTodo, _deleteTodo);
  }

  final TodoActions _actions;

  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  void _addTodo(Todo todo) {
    _todos.add(todo);
  }

  void _deleteTodo(Todo todo) {
    _todos.remove(todo);
  }
}
