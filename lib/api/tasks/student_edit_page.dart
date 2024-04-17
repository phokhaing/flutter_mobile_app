/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 4.5.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/api/tasks/student_context.dart';
import 'package:flutter_app/api/tasks/student_model.dart';
import 'package:provider/provider.dart';

import 'message_util.dart';

class StudentEditPage extends StatefulWidget {
  Result item;

  StudentEditPage(this.item);

  @override
  State<StudentEditPage> createState() => _StudentEditPageState();
}

class _StudentEditPageState extends State<StudentEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text("Edit Student"),
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

  late final _nameCtrl = TextEditingController(text: widget.item.name);

  Widget _buildNameTextField() {
    return TextFormField(
      controller: _nameCtrl,
      decoration: InputDecoration(
        icon: Text("Title"),
        hintText: "Enter title",
      ),
      validator: (text) {
        if (text!.isEmpty) {
          return "Enter title";
        } else {
          return null;
        }
      },
    );
  }

  late final _emailCtrl = TextEditingController(text: widget.item.email);

  Widget _buildEmailTextField() {
    return TextFormField(
      controller: _emailCtrl,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Text("Email"),
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
              id: widget.item.id,
              name: _nameCtrl.text.trim(),
              email: _emailCtrl.text.trim());

          int? id = widget.item.id;
          bool success = await context.read<StudentContext>().update(id!, item);
          if (success) {
            await context.read<StudentContext>().listStudents();
            await showSnackBar(context, "Student Updated");
            Navigator.of(context).pop();
          } else {
            showSnackBar(context, "Error Student Update");
          }
        }
      },
      child: Text("UPDATE"),
    );
  }
}
