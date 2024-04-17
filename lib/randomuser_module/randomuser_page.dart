import 'package:flutter/material.dart';
import 'package:flutter_app/randomuser_module/randomuser_context.dart';
import 'package:flutter_app/randomuser_module/randomuser_model.dart';
import 'package:provider/provider.dart';
import 'package:skeletons/skeletons.dart';

class RandomUserPage extends StatefulWidget {
  const RandomUserPage({Key? key}) : super(key: key);

  @override
  State<RandomUserPage> createState() => _RandomUserPageState();
}

class _RandomUserPageState extends State<RandomUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("RandomUser App"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return _buildLoading();
  }

  Widget _buildLoading() {
    bool loading = context.watch<RandomUserContext>().loading;
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
      child: SizedBox(),
    );
  }

  Widget _buildData() {
    String? error = context.watch<RandomUserContext>().error;
    if (error != null) {
      return Center(
        child: Text("Error: $error"),
      );
    } else {
      return _buildInfo();
    }
  }

  Widget _buildInfo() {
    RandomUserModel? data = context.watch<RandomUserContext>().randomUserModel;

    if (data == null) {
      return SizedBox();
    } else {
      return ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.numbers),
              title: Text("${data.info.version}"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.pages),
              title: Text("${data.info.page}"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.format_list_numbered),
              title: Text("${data.info.seed}"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.developer_board),
              title: Text("${data.info.version}"),
            ),
          ),
        ],
      );
    }
  }

  // Widget _buildListView() {
  //
  //   List<PostModel>? list = context.watch<RandomUserContext>().postList;
  //
  //   if(list == null){
  //     return SizedBox();
  //   }
  //
  //   return RefreshIndicator(
  //     onRefresh: () async{
  //       context.read<PostLogic>().setLoading();
  //       await context.read<PostLogic>().getData();
  //     },
  //     child: ListView.builder(
  //       itemCount: list.length,
  //       itemBuilder: (context, index) {
  //         return _buildItem(list[index]);
  //       },
  //     ),
  //   );
  // }
  //
  // Widget _buildItem(PostModel item) {
  //   return ListTile(
  //     leading: Text("${item.id}"),
  //     title: Text("${item.title}"),
  //     subtitle: Text("${item.body}"),
  //     trailing: Text("${item.userId}"),
  //   );
  // }
}
