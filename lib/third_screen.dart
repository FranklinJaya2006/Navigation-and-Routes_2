import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation_routes/drawer.dart';
import 'package:navigation_routes/first_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const gambar(),
      appBar: AppBar(
        title: const Text('Third Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text("Welcome to the third page", textAlign: TextAlign.center,),
            ElevatedButton(onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const FirstScreen()), (route) => false,);
                    }, child: const Text("Back to the First Page"))
          ],
        ),
      ),
    );
  }
}