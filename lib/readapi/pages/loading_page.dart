import 'package:flutter/material.dart';
import 'package:flutter_app/readapi/context/user_context.dart';
import 'package:flutter_app/readapi/pages/home_page.dart';
import 'package:provider/provider.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  _init() async {
    await context.read<UserContext>().fetchUsers();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () => _init());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLoading(),
    );
  }

  Widget _buildLoading() {
    bool initialized = context.watch<UserContext>().initialized;
    if (initialized == false) {
      return _buildLoadingLogo();
    } else {
      return const HomePage();
    }
  }

  Widget _buildLoadingLogo() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(30),
      child: const Icon(
        Icons.downloading_outlined,
        size: 100,
      ),
    );
  }
}
