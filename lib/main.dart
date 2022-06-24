import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/screen.dart';
import 'package:tic_tac_toe/services/service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tic_tac_toe',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        JoinScreen.routeName: (context) => const JoinScreen(),
        CreateScreen.routeName: (context) => const CreateScreen(),
        GameScreen.routeName: (context) => const GameScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
