import 'package:flutter/material.dart';
import 'package:flutter_app/api/tasks/student_context.dart';
import 'package:flutter_app/api/tasks/student_model.dart';
import 'package:provider/provider.dart';

import 'message_util.dart';

class StudentInsertPage extends StatefulWidget {
  const StudentInsertPage({Key? key}) : super(key: key);

  @override
  State<StudentInsertPage> createState() => _StudentInsertPageState();
}

class _StudentInsertPageState extends State<StudentInsertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Add Student"),
    );
  }

  final _formKey = GlobalKey<FormState>();

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            _buildNameTextField(),
            _buildEmailTextField(),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  final _nameCtrl = TextEditingController();

  Widget _buildNameTextField() {
    return TextFormField(
      controller: _nameCtrl,
      decoration: InputDecoration(
        hintText: "Enter name",
      ),
      validator: (text) {
        if (text!.isEmpty) {
          return "Enter name";
        } else {
          return null;
        }
      },
    );
  }

  final _emailCtrl = TextEditingController();

  Widget _buildEmailTextField() {
    return TextFormField(
      controller: _emailCtrl,
      // keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Enter email",
      ),
      validator: (text) {
        if (text!.isEmpty) {
          return "Enter email";
        } else {
          return null;
        }
      },
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      onPressed: () async {
        if (_formKey.currentState!.validate()) {
          Result item = Result(
            name: _nameCtrl.text.trim(),
            email: _emailCtrl.text.trim(),
          );

          bool success = await context.read<StudentContext>().addStudent(item);
          if (success) {
            _nameCtrl.clear();
            _emailCtrl.clear();
            await context.read<StudentContext>().listStudents();
            showSnackBar(context, "Student Inserted");
          } else {
            showSnackBar(context, "Error Student Insertion");
          }
        }
      },
      child: Text("INSERT"),
    );
  }
}
