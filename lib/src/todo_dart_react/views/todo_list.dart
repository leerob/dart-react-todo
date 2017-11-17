part of todo_dart_react;

typedef AddTodoCallback(Todo todo);
typedef DeleteTodoCallback(Todo todo);

@Factory()
UiFactory<TodoListProps> TodoList;

@Props()
class TodoListProps extends UiProps {
  List<Todo> todos;
  AddTodoCallback addTodo;
  DeleteTodoCallback deleteTodo;
}

@Component()
class TodoListComponent extends UiComponent<TodoListProps> {
  /// Create a new [TodoListItem] for each todo.
  List _renderListItems() {
    List items = [];

    for (Todo todo in props.todos) {
      items.add(
        (TodoListItem()
          ..key = todo.content
          ..todo = todo
          ..deleteTodo = props.deleteTodo)(),
      );
    }

    return items;
  }

  @override
  render() {
    return Dom.div()(
      (TodoInput()..addTodo = props.addTodo)(),
      (ListGroup()..addTestId('TodoListGroup'))(
        _renderListItems(),
      ),
    );
  }
}
