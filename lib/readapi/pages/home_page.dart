/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 29.6.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/readapi/context/user_context.dart';
import 'package:flutter_app/readapi/models/user_model.dart';
import 'package:flutter_app/readapi/pages/user_profile_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:skeletons/skeletons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showUpIcon = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        await context.read<UserContext>().fetchUsers();
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
      child: const Icon(Icons.arrow_upward),
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
      backgroundColor: Colors.pink,
      title: const Text("Read User API"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return _buildLoading();
  }

  Widget _buildLoading() {
    bool loading = context.watch<UserContext>().loading;
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
    String? error = context.watch<UserContext>().error;
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
    UserModel? getData = context.watch<UserContext>().userModel;

    if (getData == null) {
      return const SizedBox();
    }

    return RefreshIndicator(
      onRefresh: () async {
        await context.read<UserContext>().fetchUsers();
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: getData.data?.length,
        itemBuilder: (context, index) {
          return _buildItem(getData.data![index]);
        },
      ),
    );
  }

  Widget _buildItem(Data user) {
    int? id = user.id;
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            flex: 1,
            onPressed: (ctx) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UserProfilePage(user),
                ),
              );
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: Icons.remove_red_eye_outlined,
            label: 'View',
          ),
          SlidableAction(
            flex: 1,
            onPressed: (ctx) async {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Card(
        child: ListTile(
          leading: Container(
            width: 60, // Adjust the width to make the image bigger
            height: 60, // Adjust the height to make the image bigger
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  30), // Adjust the border radius if needed
              child: Image.network(
                user.avatar ?? '',
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text("${user.firstName} ${user.lastName}"),
          subtitle: Text("${user.email}"),
        ),
      ),
    );
  }
}
