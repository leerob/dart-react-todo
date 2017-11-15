part of todo_dart_react;

@Factory()
UiFactory<ToDoListItemProps> ToDoListItem;

@Props()
class ToDoListItemProps extends UiProps {}

@Component()
class ToDoListItemComponent extends UiComponent<ToDoListItemProps> {
  @override
  Map getDefaultProps() => (newProps());

  @override
  render() {
    return ListGroupItem()(
      (Dom.input()
        ..className = 'mr-3'
        ..type = 'checkbox')(),
      Dom.span()(props.children),
      (Button()
        ..className = 'float-right'
        ..skin = ButtonSkin.DANGER)(
        'Delete',
      ),
    );
  }
}
