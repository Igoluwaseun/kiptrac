import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:kiptrac/utilities/textField_folder/textfield_view.dart';
import 'package:kiptrac/views/business_profile_view.dart';
import 'package:kiptrac/views/kiptrac_view.dart';

class BusinessDetailsView extends StatefulWidget {
  const BusinessDetailsView({super.key});

  @override
  State<BusinessDetailsView> createState() => _BusinessDetailsViewState();
}

class _BusinessDetailsViewState extends State<BusinessDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Business Details'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        onPressed: () {
          setState(() {});
        },
        label: const Text("Submit"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropDownTextField(
                dropdownRadius: 12,
                textFieldDecoration: const InputDecoration(
                  label: Text('Business Type'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                // dropDownItemCount: 6,
                // initialValue: "name4",
                listSpace: 20,
                listPadding: ListPadding(top: 20),
                enableSearch: false,
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
                dropDownList: const [
                  DropDownValueModel(name: 'Retail', value: "retail"),
                  DropDownValueModel(name: 'Wholesale', value: "wholesale"),
                  DropDownValueModel(name: 'distributor', value: "distributor"),
                  DropDownValueModel(name: 'Service', value: "Service"),
                  DropDownValueModel(
                      name: 'Manufacturing', value: "manufacturing"),
                  DropDownValueModel(name: 'Others', value: "others"),
                ],

                onChanged: (val) {},
              ),
              boxSize,
              DropDownTextField(
                dropdownRadius: 12,
                textFieldDecoration: const InputDecoration(
                  label: Text('Business Category'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                // dropDownItemCount: 6,
                // initialValue: "name4",
                listSpace: 20,
                listPadding: ListPadding(top: 20),
                enableSearch: false,
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
                dropDownList: const [
                  DropDownValueModel(
                      name: 'Mechanical Repairs', value: "mechanical",),
                  DropDownValueModel(name: 'Tailoring', value: "tailoring",),
                  DropDownValueModel(name: 'Furniture', value: "furniture",),
                  DropDownValueModel(name: 'Others', value: "others",),
                ],

                onChanged: (val) {},
              ),
              boxSize,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          '/businessProfile/', (route) => false);
                    },
                    child: const Text(
                      'Cancel',
                    ),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        '/kiptracView/',
                        (route) => false,
                      );
                    },
                    child: const Text('Save'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
