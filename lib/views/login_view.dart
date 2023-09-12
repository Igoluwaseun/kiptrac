import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kiptrac/utilities/textField_folder/textfield_view.dart';

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
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          emailField,
          boxSize,
          passwordField,
          boxSize,
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.black,
              ),
            ),
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;

              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/kiptrac/', (route) => false);
              try {
                final userCredential =
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: email,
                  password: password,
                );
                print(UserCredential);
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  print('user not found');
                } else if (e.code == 'wrong-password') {
                  print('wrong password');
                } else if (e.code == 'channel-error') {
                  print('please enter your login details');
                }
                print('something else happened');
              }
            },
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/phone/',
                (route) => false,
              );
            },
            child: const Text(
              'Not registered? Click Here',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
