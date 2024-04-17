import 'package:flutter/material.dart';
import 'package:flutter_app/storage_data_local_device/counter_logic.dart';
import 'package:flutter_app/storage_data_local_device/state_page.dart';
import 'package:provider/provider.dart';

import 'theme_logic.dart';

class StateSplashPage extends StatefulWidget {
  const StateSplashPage({Key? key}) : super(key: key);

  @override
  State<StateSplashPage> createState() => _StateSplashPageState();
}

class _StateSplashPageState extends State<StateSplashPage> {
  _init() async {
    await context.read<CounterLogic>().readCounter();
    await context.read<ThemeLogic>().readTheme();
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
    bool counterInit = context.watch<CounterLogic>().initialized;
    bool themeInit = context.watch<ThemeLogic>().initialized;
    if (counterInit == true && themeInit == true) {
      return StatePage();
    } else {
      return _buildSplashLogo();
    }
  }

  Widget _buildSplashLogo() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: Icon(
        Icons.face,
        size: 100,
      ),
    );
  }
}
