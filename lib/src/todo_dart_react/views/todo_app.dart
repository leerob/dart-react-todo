part of todo_dart_react;

@Factory()
UiFactory<TodoAppProps> TodoApp;

@Props()
class TodoAppProps extends FluxUiProps<TodoActions, TodoStore> {}

@Component()
class TodoAppComponent extends FluxUiComponent<TodoAppProps> {
  @override
  render() {
    return (TodoList()
      ..addTodo = props.actions.addTodo
      ..deleteTodo = props.actions.deleteTodo
      ..todos = props.store.todos)();
  }
}
