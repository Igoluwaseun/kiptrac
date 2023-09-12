import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kiptrac/firebase_options.dart';
import 'package:kiptrac/views/basic_details.dart';
import 'package:kiptrac/views/business_details_view.dart';
import 'package:kiptrac/views/business_profile_view.dart';
import 'package:kiptrac/views/kiptrac_view.dart';
import 'package:kiptrac/views/login_view.dart';
import 'package:kiptrac/views/phone_number_view.dart';
import 'package:kiptrac/views/register_view.dart';
import 'package:kiptrac/views/schedule_maintenance_view.dart';
import 'package:kiptrac/views/task_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/login/': (context) => const LoginView(),
        '/register/': (context) => const RegisterView(),
        '/phone/': (context) => const PhoneNumberView(),
        '/kiptrac/': (context) => const KiptracView(),
        '/businessProfile/': (context) => const BusinessProfileView(),
        '/basicDetails/': (context) => const BasicDetailsView(),
        '/businessDetails/': (context) => const BusinessDetailsView(),
        '/task/': (context) => const TaskView(),
        '/scheduleMaintenance/': (context) => const ScheduleMaintenanceView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: FutureBuilder(
            future: Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform,
            ),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  //
                  return const LoginView();
                default:
                  return const Text('Loading...');
              }
            },
          ),
        ),
      ),
    );
  }
}

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('please verify your email address'),
        ElevatedButton(
          onPressed: () async {
            final user = FirebaseAuth.instance.currentUser;
            await user?.sendEmailVerification();
          },
          child: const Text('Send email vefrification'),
        )
      ],
    );
  }
}
