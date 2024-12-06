import 'package:flutter/material.dart';
import 'package:navigation_routes/drawer.dart';
import 'package:navigation_routes/second_screen.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen'),
        automaticallyImplyLeading: false,
      ),
      endDrawer: const gambar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen.
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const SecondScreen()), (route) => false,);
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}