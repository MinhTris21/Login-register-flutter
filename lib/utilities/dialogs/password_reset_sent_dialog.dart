import 'package:basic_flutter/utilities/dialogs/generic_dialog.dart';
import 'package:flutter/widgets.dart';

Future<void> showPasswordResetSentDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Password Reset',
    content: 'We have sent the reset password email, please check your email',
    optionsBuilder: () => {
      'OK': null,
    },
  );
}
