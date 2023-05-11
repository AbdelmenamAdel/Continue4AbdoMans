import 'dart:math';

import 'package:flutter/material.dart';
import 'package:model_class/modules/bmi_result/Bmi_Result.dart';

class Bmi_Calcolator extends StatefulWidget {
  const Bmi_Calcolator({super.key});

  @override
  State<Bmi_Calcolator> createState() => _Bmi_CalcolatorState();
}

class _Bmi_CalcolatorState extends State<Bmi_Calcolator> {
  bool ismale = true;
  double height = 120;
  int age = 20;
  int weight = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ismale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: ismale ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            image: AssetImage('images/male.jpg'),
                            height: 90,
                            width: 90,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'male',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ismale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: !ismale ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            image: AssetImage('images/female.png'),
                            height: 90,
                            width: 90,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'female',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HEIGHT',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('${height.round()}',
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'CM',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Slider(
                  min: 80.0,
                  max: 220.0,
                  value: height,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                      print(value.round());
                    });
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'AGE',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$age',
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'weight',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$weight',
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const Icon(Icons.remove),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
        SizedBox(
            width: double.infinity,
            height: 35,
            child: ElevatedButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMI_RESULT(
                          age: age,
                          ismale: ismale,
                          result: result.round(),
                        ),
                      ));
                },
                child: const Text('calculate')))
      ]),
    );
  }
}
