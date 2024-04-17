import 'package:flutter/material.dart';
import 'package:flutter_app/randomuser_module/randomuser_context.dart';
import 'package:flutter_app/randomuser_module/randomuser_page.dart';
import 'package:provider/provider.dart';

class RandomUserSplashPage extends StatefulWidget {
  const RandomUserSplashPage({Key? key}) : super(key: key);

  @override
  State<RandomUserSplashPage> createState() => _RandomUserSplashPageState();
}

class _RandomUserSplashPageState extends State<RandomUserSplashPage> {
  _init() async {
    await context.read<RandomUserContext>().getData();
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
    bool initialized = context.watch<RandomUserContext>().initialized;
    if (initialized == false) {
      return _buildSplashLogo();
    } else {
      return RandomUserPage();
    }
  }

  Widget _buildSplashLogo() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: Icon(
        Icons.account_box,
        size: 100,
      ),
    );
  }
}
