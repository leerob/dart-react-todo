part of todo_dart_react;

@Factory()
UiFactory<TodoAppProps> TodoApp = _$TodoApp;

@Props()
class _$TodoAppProps extends FluxUiProps<TodoActions, TodoStore> {}

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
