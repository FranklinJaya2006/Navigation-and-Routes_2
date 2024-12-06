import 'package:flutter/material.dart';
import 'package:navigation_routes/drawer.dart';
import 'package:navigation_routes/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen'),
      automaticallyImplyLeading: false,),
      endDrawer: const gambar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Return to the first screen.
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const ThirdScreen()), (route) => false,);
          },
          child: const Text('Go to Third Screen'),
        ),
      ),
    );
  }
}