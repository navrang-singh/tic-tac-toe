import 'package:flutter/material.dart';

import '../responsive/responsive.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class JoinScreen extends StatefulWidget {
  static String routeName = '/join-screen';
  const JoinScreen({Key? key}) : super(key: key);

  @override
  State<JoinScreen> createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  final TextEditingController _usrnamecontroller = TextEditingController();
  final TextEditingController _gameidcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _usrnamecontroller.dispose();
    _gameidcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const CustomText(
              shadows: [
                Shadow(
                  blurRadius: 50,
                  color: Colors.blueAccent,
                ),
              ],
              text: 'Join Room ',
              fontSize: 60,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextfield(
              controller: _usrnamecontroller,
              hintText: 'Enter your name',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
              controller: _gameidcontroller,
              hintText: 'Enter room id',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(onPressed: () {}, btnText: 'join room'),
          ]),
        ),
      ),
    );
  }
}
