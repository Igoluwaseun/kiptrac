import 'package:flutter/material.dart';

//  final myViewPadding = padding: EdgeInsets.symmetric(horizontal: 16.0);
// const appbarBackgroudColor = backgroundColor: Colors.black;
const textFieldSizeBox = SizedBox(
  height: 50.0,
);
const boxSize = SizedBox(height: 10.0),
    businessTypeFields = TextField(
      decoration: InputDecoration(
        labelText: 'Business Type',
        floatingLabelAlignment: FloatingLabelAlignment.center,
        floatingLabelStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.black,
          ),
        ),
      ),
    );
const businessCategoryField = TextField(
  decoration: InputDecoration(
    labelText: 'Business Category',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);

const businessNameField = TextField(
  decoration: InputDecoration(
    labelText: 'Business Name',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const phoneNumberField = TextField(
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    labelText: 'Phone Number',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const businessEmailField = TextField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    labelText: 'Business Email',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const businessAddressField = TextField(
  keyboardType: TextInputType.streetAddress,
  decoration: InputDecoration(
    labelText: 'Business Address',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const businessDescriptionField = TextField(
  decoration: InputDecoration(
    labelText: 'Business Description',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const emailField = TextField(
  enableSuggestions: false,
  autocorrect: false,
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    labelText: 'Enter your email here',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const passwordField = TextField(
  autocorrect: false,
  enableSuggestions: false,
  obscureText: true,
  decoration: InputDecoration(
    labelText: 'Enter your password here',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const brandField = TextField(
  decoration: InputDecoration(
    labelText: 'Brand',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const modelField = TextField(
  decoration: InputDecoration(
    labelText: 'Model',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const oilFilterField = TextField(
  decoration: InputDecoration(
    labelText: 'Oil Filter',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const fuelFilterField = TextField(
  decoration: InputDecoration(
    labelText: 'Fule Filter',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const fuelWaterSeperatorField = TextField(
  decoration: InputDecoration(
    labelText: 'Fuel/Water Seperator',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const engineOillField = TextField(
  decoration: InputDecoration(
    labelText: 'Engine Oil',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
const airFilterField = TextField(
  decoration: InputDecoration(
    labelText: 'Air Filter',
    floatingLabelAlignment: FloatingLabelAlignment.center,
    floatingLabelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderSide: BorderSide(),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
    ),
  ),
);
