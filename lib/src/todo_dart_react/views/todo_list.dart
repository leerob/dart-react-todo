part of todo_dart_react;

@Factory()
UiFactory<ToDoListProps> ToDoList;

@Props()
class ToDoListProps extends FluxUiProps<ToDoActions, ToDoStore> {}

@Component()
class ToDoListComponent extends FluxUiComponent<ToDoListProps> {
  @override
  Map getDefaultProps() => (newProps());

  /// Create a new [ToDoListItem] for each todo.
  List _renderListItems() {
    List items = [];

    for (String todo in props.store.todos) {
      items.add(
        (ToDoListItem()..key = todo)(todo),
      );
    }

    return items;
  }

  @override
  render() {
    return Dom.div()(
      (ToDoInput()..addTodo = props.actions.addTodo)(),
      (ListGroup()..addTestId('todoListGroup'))(
        _renderListItems(),
      ),
    );
  }
}
