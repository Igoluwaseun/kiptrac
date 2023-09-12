import 'package:flutter/material.dart';
import 'package:kiptrac/utilities/textField_folder/textfield_view.dart';
import 'package:kiptrac/views/business_profile_view.dart';
import 'package:kiptrac/views/kiptrac_view.dart';

class BasicDetailsView extends StatefulWidget {
  const BasicDetailsView({super.key});

  @override
  State<BasicDetailsView> createState() => _BasicDetailsViewState();
}

class _BasicDetailsViewState extends State<BasicDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Basic Details',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                textFieldSizeBox,
                businessNameField,
                boxSize,
                phoneNumberField,
                boxSize,
                businessEmailField,
                boxSize,
                businessAddressField,
                boxSize,
                businessDescriptionField,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black)),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          '/businessProfile/',
                          (route) => false,
                        );
                      },
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/kiptrac/', (route) => false);
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
