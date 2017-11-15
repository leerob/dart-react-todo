part of todo_dart_react;

@Factory()
UiFactory<ToDoListProps> ToDoList;

@Props()
class ToDoListProps extends FluxUiProps<ToDoActions, ToDoStore> {}

@Component()
class ToDoListComponent extends FluxUiComponent<ToDoListProps> {
  @override
  Map getDefaultProps() => (newProps());

  /// Create a new [ListGroupItem] for each todo.
  List _renderListItems() {
    List items = [];

    for (String todo in props.store._todos) {
      items.add(
        (ListGroupItem()..key = todo)(todo),
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
