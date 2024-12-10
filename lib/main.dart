import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      title: "Sheep counter",
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int sheep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "SHEEP COUNTER",
          style: TextStyle(letterSpacing: 6),
        ),
      ),
      body: Center(
        child: Text(
          "$sheep",
          style: const TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.w600,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sheep++;
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
