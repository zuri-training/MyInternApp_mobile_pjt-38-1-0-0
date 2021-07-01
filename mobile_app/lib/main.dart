import 'package:flutter/material.dart';


import 'package:mobile_app/screens/landing_page.dart';

void main() {
  runApp( Home());
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GeneralGroup()
    );
  }
}
