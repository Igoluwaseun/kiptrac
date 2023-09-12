import 'package:flutter/material.dart';
import 'package:kiptrac/views/basic_details.dart';
import 'package:kiptrac/views/business_details_view.dart';
import 'package:kiptrac/views/kiptrac_view.dart';

class BusinessProfileView extends StatefulWidget {
  const BusinessProfileView({super.key});

  @override
  State<BusinessProfileView> createState() => _BusinessProfileViewState();
}

class _BusinessProfileViewState extends State<BusinessProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/kiptrac/',
                (route) => false,
              );
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.black,
        title: const Text(
          'Business Profile',
          textAlign: TextAlign.start,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.zero,
          ),
          Icon(Icons.add_a_photo)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/basicDetails/',
                  (route) => false,
                );
              },
              child: const Text('BASIC DETAILS'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/businessDetails/',
                  (route) => false,
                );
              },
              child: const Text('BUSINESS DETAILS'),
            ),
          ],
        ),
      ),
    );
  }
}
