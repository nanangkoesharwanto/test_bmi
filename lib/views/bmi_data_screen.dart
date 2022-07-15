import 'package:flutter/material.dart';
import 'package:untitled2/views/bmi_result_screen.dart';

import '../constants/constant.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class BmiDataScreen extends StatefulWidget {
  const BmiDataScreen({Key? key}) : super(key: key);

  @override
  State<BmiDataScreen> createState() => _BmiDataScreenState();
}

class _BmiDataScreenState extends State<BmiDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0e21),
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: const [
              Expanded(
                  child: BmiCard(
                child: GenderIconText(
                  icon: Icons.male,
                  title: 'Male',
                ),
              )),
              Expanded(
                child: BmiCard(
                  child: GenderIconText(
                    icon: Icons.female,
                    title: 'Female',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.yellow,
        )),
        Expanded(
            child: Container(
          color: Colors.blue,
        )),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) {
                  return BmiResultScreen();
                }),
              ),
            );
          },
          child: Container(
            height: 60,
            child: Center(
              child: Text('Hitung BMI'),
            ),
          ),
        ),
      ]),
    );
  }
}

class BmiCard extends StatelessWidget {
  const BmiCard({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff111328),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(15),
      child: child,
    );
  }
}

class GenderIconText extends StatelessWidget {
  const GenderIconText({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Color(0xff8d8e98),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(title, style: genderTextStyle),
      ],
    );
  }
}
