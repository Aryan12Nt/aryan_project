import 'package:aryan_project/screen/home_screen.dart';
import 'package:flutter/material.dart';

class BNBScreen extends StatefulWidget {
  BNBScreen({Key? key, this.currentIndex}) : super(key: key);
  int? currentIndex = 0;

  @override
  State<BNBScreen> createState() => _BNBScreenState();
}

class _BNBScreenState extends State<BNBScreen> {
  late List<Widget> _screens;
@override
  void initState() {
    // TODO: implement initState
    _screens = [
      const HomeScreen()
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(

        ),
    );
  }
}
