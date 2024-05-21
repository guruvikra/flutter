import "package:flutter/material.dart";


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var name="Guru Vikram";
    return Scaffold(
      appBar: AppBar(
        title: const Text("First App"),
        backgroundColor: Colors.blueGrey,
      ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
                child: Text("hello $name",
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey,
                  fontWeight:FontWeight.bold
                ),
                
                ),
              ),
        ),
        drawer: const Drawer(),
      );
  }
}
