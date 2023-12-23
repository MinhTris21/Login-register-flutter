import 'package:basic_flutter/utilities/dialogs/generic_dialog.dart';
import 'package:flutter/material.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Log out',
    content: 'Are you sure want to log out ?',
    optionsBuilder: () => {'Cancel': false, 'Log out': true},
  ).then(
    (value) => value ?? false,
  );
}
