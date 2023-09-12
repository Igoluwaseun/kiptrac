import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({super.key});

  @override
  _PhoneNumberViewState createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();
  late final TextEditingController _number;

  @override
  void initState() {
    _number = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Phone Field'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                IntlPhoneField(
                  //  controller: _number,
                  focusNode: focusNode,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  languageCode: "en",
                  keyboardType: TextInputType.number,
                  initialCountryCode: 'NG',
                  onChanged: (phone) {
                    // print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    // print('Country changed to: ' + country.name);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    _formKey.currentState?.validate();
                    child: {}
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
