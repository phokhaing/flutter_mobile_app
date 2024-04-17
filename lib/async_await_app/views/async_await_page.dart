/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 4.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/async_await_app/context/TodoContext.dart';
import 'package:flutter_app/async_await_app/models/TodoModel.dart';
import 'package:provider/provider.dart';
import 'package:skeletons/skeletons.dart';

import 'async_await_detail_page.dart';

class AsyncAwaitPage extends StatefulWidget {
  const AsyncAwaitPage({Key? key}) : super(key: key);

  @override
  State<AsyncAwaitPage> createState() => _AsyncAwaitPageState();
}

class _AsyncAwaitPageState extends State<AsyncAwaitPage> {
  // Syncrony

  // int _sum(int a, int b) {
  //   return a + b;
  // }
  //
  // Future<int> _add(int a, int b) {
  //   return Future.value(a + b);
  // }
  //
  // void _show(String name) {
  //   debugPrint("Show $name");
  // }
  //
  // Future<void> _hello(String name) async {
  //   debugPrint("Hello $name");
  // }

  _init() async {
    // call method from context provider
    await context.read<TodoContext>().listTodoData();
  }

  @override
  void initState() {
    super.initState();
    // fetch data on initial in 1 seconds
    Future.delayed(const Duration(seconds: 1), () => _init());
  }

  @override
  Widget build(BuildContext context) {
    // int s = _sum(10, 20);
    // debugPrint("S = $s");

    // call async func must be use then
    // _add(20, 30).then((value) => {debugPrint("value = $value")});
    // _show("Sok");
    // _show("Sao");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Async Await State Page"),
        actions: [
          TextButton(
              onPressed: () {
                // navigate to page AsyncAwaitDetailPage
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AsyncAwaitDetailPage()));
              },
              child: const Icon(
                Icons.view_comfortable,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {
              // showSnackBar(context, "Hello");
            },
            icon: const Icon(Icons.visibility),
          ),
        ],
      ),
      body: _buildBody(),
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
      return _buildData();
    }
  }

  // Loading progress while refresh page app
  Widget _buildProgress() {
    return Skeleton(
      isLoading: true,
      skeleton: SkeletonListView(),
      child: SizedBox(),
    );
  }

  Widget _buildData() {
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
      return const SizedBox();
    }

    // RefreshIndicator will trigger a refresh when the list is over-scrolled
    return RefreshIndicator(
      onRefresh: () async {
        context.read<TodoContext>().setLoading();
        await context.read<TodoContext>().listTodoData();
      },
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return _buildItem(list[index]);
        },
      ),
    );
  }

  Widget _buildItem(TodoModel todo) {
    return ListTile(
      leading: Text("${todo.id}"),
      title: Text(todo.title),
      subtitle: Text("Author: ${todo.userId}"),
      trailing: Text(todo.completed.toString(),
          style: todo.completed
              ? const TextStyle(color: Colors.green)
              : TextStyle(color: Colors.red)),
    );
  }
}
