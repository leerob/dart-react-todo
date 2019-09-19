part of '../components.dart';

class TodoStore extends Store {
  TodoStore(TodoActions actions) : _actions = actions {
    _todos = [
      new Todo('Learn Dart'),
      new Todo('Learn React'),
      new Todo('????'),
      new Todo('Profit!')
    ];

    triggerOnActionV2(_actions.addTodo, (todo) => _todos.add(todo));
    triggerOnActionV2(_actions.completeTodo, (todo) => todo.completed = true);
    triggerOnActionV2(_actions.deleteTodo, (todo) => _todos.remove(todo));
    triggerOnActionV2(_actions.clearTodoList, (_) => _todos = []);
  }

  final TodoActions _actions;

  List<Todo> _todos = [];
  List<Todo> get todos => _todos;
}
