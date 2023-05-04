import 'package:flutter/material.dart';
import 'package:model_class/Bmi_Calculator.dart';
import 'package:model_class/Bmi_Result.dart';
import 'package:model_class/class_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmi_Calcolator(),
    );
  }
}
