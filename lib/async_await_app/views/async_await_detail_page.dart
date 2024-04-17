/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 6.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/async_await_app/context/TodoContext.dart';
import 'package:flutter_app/async_await_app/models/TodoModel.dart';
import 'package:provider/provider.dart';

class AsyncAwaitDetailPage extends StatefulWidget {
  const AsyncAwaitDetailPage({Key? key}) : super(key: key);

  @override
  State<AsyncAwaitDetailPage> createState() => _AsyncAwaitDetailPageState();
}

class _AsyncAwaitDetailPageState extends State<AsyncAwaitDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.pink,
      title: Text("Detail App"),
    );
  }

  Widget _buildBody() {
    return _buildLoading();
  }

  Widget _buildLoading() {
    bool loading = context.watch<TodoContext>().loading;
    if (loading) {
      return _buildProgress();
    } else {
      return _buildError();
    }
  }

  Widget _buildProgress() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _buildError() {
    String? error = context.watch<TodoContext>().error;
    if (error != null) {
      return Center(
        child: Text("Error: $error"),
      );
    } else {
      return _buildListView();
    }
  }

  Widget _buildListView() {
    List<TodoModel>? list = context.watch<TodoContext>().todoList;

    if (list == null) {
      return SizedBox();
    }

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return _buildItem(list[index]);
      },
    );
  }

  Widget _buildItem(TodoModel item) {
    return ListTile(
      leading: Text("${item.id}"),
      title: Text("${item.title}"),
      subtitle: Text("${item.userId}"),
      trailing: Text("${item.completed}"),
    );
  }
}
