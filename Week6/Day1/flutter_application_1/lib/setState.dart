import 'package:flutter/material.dart';

class Set_State extends StatefulWidget {
  const Set_State({super.key});

  @override
  State<Set_State> createState() => _Set_StateState();
}

class _Set_StateState extends State<Set_State> {
  _incrementCount() {
    setState(() {
      count++;
    });
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCount();
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
      ),
      appBar: AppBar(
        title: Text("SetState/Cubit"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(child: Text("This shows count: $count")),
    );
  }
}
