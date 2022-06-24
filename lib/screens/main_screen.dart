import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/screen.dart';
import 'package:tic_tac_toe/widgets/widget.dart';

import '../responsive/responsive.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/main-screen';
  const HomeScreen({Key? key}) : super(key: key);

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  Shadow(
                    blurRadius: 50,
                    color: Colors.blueAccent,
                  ),
                ],
                text: 'Tic Tac Toe ',
                fontSize: 60,
              ),
              const SizedBox(
                height: 100,
              ),
              CustomButton(
                onPressed: () => createRoom(context),
                btnText: 'Create room',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                onPressed: () => joinRoom(context),
                btnText: 'Join room',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
