part of todo_dart_react;

@Factory()
UiFactory<ToDoInputProps> ToDoInput;

@Props()
class ToDoInputProps extends UiProps {
  Function addTodo;
}

@Component()
class ToDoInputComponent extends UiComponent<ToDoInputProps> {
  @override
  Map getDefaultProps() => (newProps());

  InputElement _todoInput;

  _checkForEnterPressed(SyntheticKeyboardEvent e) {
    if (e.keyCode == 13) {
      props.addTodo(_todoInput.value);
      _todoInput.value = '';
    }
  }

  @override
  render() { 
    return (Dom.input()
      ..className = 'form-control mb-1 mt-2'
      ..placeholder = 'What do you need to do?'
      ..onKeyDown = _checkForEnterPressed
      ..ref = (instance) {
        _todoInput = instance;
      }
    )();
  }
}