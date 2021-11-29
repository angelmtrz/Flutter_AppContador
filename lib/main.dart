import 'package:flutter/material.dart';
import 'package:app_tarea_02/tarea02_page.dart';

void main() {
  runApp(const Tarea02App());
}

class Tarea02App extends StatelessWidget {
  const Tarea02App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Tarea02',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Tarea02Page(),
    );
  }
}
