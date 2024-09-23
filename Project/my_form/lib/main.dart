import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  int counter = 0;
  @override
  State<MyForm> creatState() => _MyFormState();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
            children: [
              Text(
                "Giá trị hiện tại là: ${counter}",
              )
            ]
          ),
    ),
    );
  }
}
