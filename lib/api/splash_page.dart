import 'package:flutter/material.dart';
import 'package:flutter_app/api/tasks/student_context.dart';
import 'package:flutter_app/api/tasks/student_page.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _init() async {
    await context.read<StudentContext>().listStudents();
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
    bool initialized = context.watch<StudentContext>().initialized;
    if (initialized == false) {
      return _buildSplashLogo();
    } else {
      return const StudentPage();
    }
  }

  Widget _buildSplashLogo() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(30),
      child: const Icon(
        Icons.shopping_cart,
        size: 100,
      ),
    );
  }
}
