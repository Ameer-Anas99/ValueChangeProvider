import 'package:flutter/material.dart';

class ChangeValue extends StatelessWidget {
  const ChangeValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.purple,
      title: const Center(child: Text("Change Value")),
    ));
  }
}
