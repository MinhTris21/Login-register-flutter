// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:basic_flutter/firebase_options.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _email,
          decoration: const InputDecoration(hintText: 'Enter your email'),
          obscureText: false,
          enableSuggestions: false,
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
        ),
        TextField(
          controller: _password,
          decoration: const InputDecoration(hintText: 'Enter your password'),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        ),
        TextButton(
          onPressed: () async {
            final email = _email.text;
            final password = _password.text;
            try {
              final userCredential = await FirebaseAuth.instance
                  .signInWithEmailAndPassword(email: email, password: password);
              print(userCredential);
            } on FirebaseAuthException catch (e) {
              if (e.code == 'user-not-found') {
                print('user not found');
              } else if (e.code == 'wrong-password') {
                print('wrong password');
              } else if (e.code == 'too-many-requests') {
                print('too many request at the moment, try again later');
              }
            }
          },
          child: const Text('Login'),
        ),
        TextButton(
            onPressed: () {},
            child: const Text('Not register yet, register here!'))
      ],
    );
  }
}
