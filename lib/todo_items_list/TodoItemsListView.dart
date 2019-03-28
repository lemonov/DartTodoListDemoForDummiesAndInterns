import 'package:flutter/material.dart';
import 'package:flutter_app/assets/string_assets_en.dart';
import 'package:flutter_app/todo_items_list/TodoItemsListController.dart';

class TodoItemsListView extends StatefulWidget {
  final TodoItemsListController _controller;

  TodoItemsListView(this._controller);

  @override
  State<StatefulWidget> createState() {
    return _TodoItemsListViewState(this._controller);
  }
}

class _TodoItemsListViewState extends State<TodoItemsListView> {
  final TodoItemsListController _controller;
  static int itemIterator = 0;

  _TodoItemsListViewState(this._controller);

  @override
  Widget build(BuildContext context) {
    return Material(child: Column(children: <Widget>[
      getItemsListWidget(),
      getAddItemButton()
    ]),);
  }

  Widget getItemsListWidget() {
    List<Widget> items = List<Widget>();
    for (TodoItem item in _controller.getAllItems()) {
      items.add(Column(children: <Widget>[
        Text(item.name), Text(item.message)
      ]));
    }
    return ListView(
        children: items, scrollDirection: Axis.vertical, shrinkWrap: true);
  }

  Widget getAddItemButton() {
    return FlatButton(
        child: Text(StringAssets.ADD_ITEM_BUTTON_TEXT), onPressed: () {
      setState(() {
        itemIterator++;
        this._controller.addItem(
            TodoItem("TestTitle${itemIterator}", "Message ${itemIterator}"));
      });
    });
  }
}
