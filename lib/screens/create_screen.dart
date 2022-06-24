import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/custom_textfield.dart';
import 'package:tic_tac_toe/widgets/widget.dart';

import '../responsive/responsive.dart';

class CreateScreen extends StatefulWidget {
  static String routeName = '/create-screen';
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final TextEditingController _usrnamecontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _usrnamecontroller.dispose();
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
              text: 'Create Room ',
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
            CustomButton(onPressed: () {}, btnText: 'create room'),
          ]),
        ),
      ),
    );
  }
}
