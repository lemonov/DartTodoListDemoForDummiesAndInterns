class TodoItem {
  TodoItem(this._name, this._message);

  String _name;
  String _message;

  String get name => _name;

  String get message => _message;

  set name(String value) {
    _name = value;
  }

  set message(String value) {
    _message = value;
  }
}


class TodoItemsListController {
  List<TodoItem> _listElements = List();

  void addItem(item) => _listElements.add(item);
  List<TodoItem> getAllItems() => _listElements;
}

