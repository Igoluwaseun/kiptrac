import 'package:flutter/material.dart';

class KiptracView extends StatefulWidget {
  const KiptracView({super.key});

  @override
  State<KiptracView> createState() => _KiptracViewState();
}

class _KiptracViewState extends State<KiptracView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Name'),
      ),
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.add),
      ),
    );
  }
}
