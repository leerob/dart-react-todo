part of '../components.dart';

@Factory()
UiFactory<TodoInputProps> TodoInput = _$TodoInput;

@Props()
class _$TodoInputProps extends UiProps {
  /// When a new todo item is added to the list.
  AddTodoCallback addTodo;
}

@Component()
class TodoInputComponent extends UiComponent<TodoInputProps> {
  InputElement _todoInput;

  /// Check the keyCode to determine if enter was pressed.
  ///
  /// If enter was pressed, add a new todo item with the current
  /// value and reset the input.
  void _checkForEnterPressed(e) {
    if (e.keyCode == 13) {
      props.addTodo(new Todo(_todoInput.value));
      _todoInput.value = '';
    }
  }

  @override
  render() {
    return (Dom.input()
      ..addTestId('todoInput')
      ..className = 'form-control mb-3 mt-5'
      ..placeholder = 'What do you need to do?'
      ..onKeyDown = _checkForEnterPressed
      ..ref = (instance) {
        _todoInput = instance as InputElement;
      })();
  }
}
