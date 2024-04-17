import 'package:flutter/material.dart';

showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black54,
      content: Text(text),
      duration: Duration(seconds: 1),
      action: SnackBarAction(
        label: 'DONE',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    ),
  );
}

showBanner(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showMaterialBanner(MaterialBanner(
    content: Text(text),
    actions: [
      IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
        },
        icon: Icon(Icons.done),
      ),
    ],
  ));
}
