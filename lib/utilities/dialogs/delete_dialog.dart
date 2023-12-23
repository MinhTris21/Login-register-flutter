import 'package:basic_flutter/utilities/dialogs/generic_dialog.dart';
import 'package:flutter/material.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Delete',
    content: 'Are you sure want to delete ?',
    optionsBuilder: () => {'Cancel': false, 'Yes': true},
  ).then(
    (value) => value ?? false,
  );
}
