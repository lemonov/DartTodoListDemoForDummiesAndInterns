import 'package:flutter/material.dart';
import 'package:flutter_app/todo_items_list/TodoItemsListController.dart';
import 'package:flutter_app/todo_items_list/TodoItemsListView.dart';

import 'assets/string_assets_en.dart';


void main() => runApp(new TodoListApp());

class TodoListApp extends StatelessWidget {
  TodoItemsListController _todoItemsListController = TodoItemsListController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: StringAssets.APP_TITLE,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoItemsListView(_todoItemsListController),
    );
  }
}

