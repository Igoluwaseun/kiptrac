import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:kiptrac/utilities/iconsfield_view.dart';
import 'package:kiptrac/utilities/textField_folder/textfield_view.dart';

class ScheduleMaintenanceView extends StatefulWidget {
  const ScheduleMaintenanceView({super.key});

  @override
  State<ScheduleMaintenanceView> createState() =>
      _ScheduleMaintenanceViewState();
}

class _ScheduleMaintenanceViewState extends State<ScheduleMaintenanceView> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Schedule Mantenance'),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/kiptrac/', (route) => false);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Date: ${time.year}:${time.month}:${time.day}\nTime: ${time.hour}:${time.minute}',
                  ),
                  textFieldSizeBox,
                  DropDownTextField(
                    dropdownRadius: 12,
                    textFieldDecoration: const InputDecoration(
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      label: Text('Brand'),
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
                          name: 'Caterpillar', value: 'Caterpillar'),
                      DropDownValueModel(name: 'Cummins', value: 'Cummins'),
                      DropDownValueModel(name: 'FG wilson', value: 'FG Wilson'),
                      DropDownValueModel(name: 'Mikano ', value: 'Mikano'),
                      DropDownValueModel(name: 'Perkins', value: 'Perkins'),
                      DropDownValueModel(name: 'Tiger', value: 'Tiger'),
                      DropDownValueModel(name: 'Perkins', value: 'Perkins'),
                      DropDownValueModel(name: 'Sumec', value: 'Sumec'),
                    ],
                    onChanged: (val) {},
                  ),
                  boxSize,
                  modelField,
                  boxSize,
                  engineOillField,
                  boxSize,
                  oilFilterField,
                  boxSize,
                  fuelFilterField,
                  boxSize,
                  fuelWaterSeperatorField,
                  boxSize,
                  airFilterField,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            '/kiptrac/',
                            (route) => false,
                          );
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/scheduleMaintenance/', (route) => false);
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
