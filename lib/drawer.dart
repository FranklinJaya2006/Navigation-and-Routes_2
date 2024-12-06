import 'package:flutter/material.dart';
import 'package:navigation_routes/first_screen.dart';
import 'package:navigation_routes/second_screen.dart';
import 'package:navigation_routes/third_screen.dart';

class gambar extends StatefulWidget {
  const gambar({super.key});

  @override
  State<gambar> createState() => _gambarState();
}

class _gambarState extends State<gambar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
               const SizedBox(
                height: 120,
                 child: DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      child: Center(
                        child: Text(
                        "Halaman yang tersedia", style: TextStyle(color: Colors.white),
                                          ),
                      ),
                  ),
               ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("First Page"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
                },
              ),
               ListTile(
                leading: Icon(Icons.person),
                title: Text("Second Page"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                },
              ),
               ListTile(
                leading: Icon(Icons.description),
                title: Text("Third Page"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdScreen()));
                },
              ),
        ],
      ));
  }
}