part of '../components.dart';

class TodoStore extends Store {
  TodoStore(TodoActions actions) : _actions = actions {
    _todos = [
      new Todo('Learn Dart'),
      new Todo('Learn React'),
      new Todo('????'),
      new Todo('Profit!')
    ];

    triggerOnAction(_actions.addTodo, (todo) => _todos.add(todo));
    triggerOnAction(_actions.completeTodo, (todo) => todo.completed = true);
    triggerOnAction(_actions.deleteTodo, (todo) => _todos.remove(todo));
    triggerOnAction(_actions.clearTodoList, (_) => _todos = []);
  }

  final TodoActions _actions;

  List<Todo> _todos = [];
  List<Todo> get todos => _todos;
}
