import 'package:flutter/material.dart';

showAlertDialog({
  required BuildContext context,
  required String title,
  required String msg,
  Function? task,
}) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      task ?? (Navigator.pop(context));
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(msg),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
