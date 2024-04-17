import 'package:flutter/material.dart';
import 'package:flutter_app/api/tasks/student_context.dart';
import 'package:flutter_app/api/tasks/student_edit_page.dart';
import 'package:flutter_app/api/tasks/student_insert_page.dart';
import 'package:flutter_app/api/tasks/student_model.dart';
import 'package:flutter_app/api/tasks/student_search_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:skeletons/skeletons.dart';

import 'message_util.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  bool _showUpIcon = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        await context.read<StudentContext>().listStudents();
      }
    
      if (_scrollController.position.pixels >= 300) {
        setState(() {
          _showUpIcon = true;
        });
      } else {
        setState(() {
          _showUpIcon = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _showUpIcon ? _buildFloating() : null,
    );
  }

  Widget _buildFloating() {
    return FloatingActionButton(
      child: Icon(Icons.arrow_upward),
      onPressed: () {
        _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 400),
          curve: Curves.fastOutSlowIn,
        );
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Student Page"),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const StudentSearchPage(),
              ),
            );
          },
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const StudentInsertPage(),
              ),
            );
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return _buildLoading();
  }

  Widget _buildLoading() {
    bool loading = context.watch<StudentContext>().loading;
    if (loading) {
      return _buildProgress();
    } else {
      return _buildData();
    }
  }

  Widget _buildProgress() {
    return Skeleton(
      isLoading: true,
      skeleton: SkeletonListView(),
      child: const SizedBox(),
    );
  }

  Widget _buildData() {
    String? error = context.watch<StudentContext>().error;
    if (error != null) {
      return Center(
        child: Text("Error: $error"),
      );
    } else {
      return _buildListView();
    }
  }

  final _scrollController = ScrollController();

  Widget _buildListView() {
    StudentModel? data = context.watch<StudentContext>().studentModel;

    if (data == null) {
      return const SizedBox();
    }

    return RefreshIndicator(
      onRefresh: () async {
        await context.read<StudentContext>().listStudents();
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: data.results?.length,
        itemBuilder: (context, index) {
          return _buildItem(data.results![index]);
        },
      ),
    );
  }

  Widget _buildItem(Result item) {
    int? id = item.id;
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: DrawerMotion(),
        children: [
          SlidableAction(
            flex: 1,
            onPressed: (ctx) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StudentEditPage(item),
                ),
              );
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.edit,
            label: 'Edit',
          ),
          SlidableAction(
            flex: 1,
            onPressed: (ctx) async {
              bool success =
                  await context.read<StudentContext>().delete(id!, item);
              if (success) {
                await context.read<StudentContext>().listStudents();
                showSnackBar(context, "Product Delete");
              } else {
                showSnackBar(context, "Error Product Deletion");
              }
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Card(
        child: ListTile(
          leading: Text("${item.id}"),
          title: Text("${item.name}"),
          subtitle: Text("${item.email}"),
        ),
      ),
    );
  }
}
