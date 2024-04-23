import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minecraft Character'),
        ),
        body: Center(
          child: MinecraftCard(),
        ),
      ),
    );
  }
}

class MinecraftCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30), 
            MinecraftCharacter(),
            SizedBox(height: 10),
            Text(
              'Creeper - моб из игры Minecraft, которого отличает взрывоопасность.',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),
            ),
          ],
        ),
      ),
    );
  }
}

class MinecraftCharacter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
    // бас
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.red,
          
          ),
        ),
                // Left сол еоз
        Positioned(
          top: 40,
          left: 20,
          child: Container(
            width: 20,
            height: 20,
            color: Colors.black,
          ),
        ),
        // он коз
        Positioned(
          top: 40,
          right: 20,
          child: Container(
            width: 20,
            height: 20,
            color: Colors.black,
          ),
        ),
        // ауыз
        Positioned(
          top: 70,
          left: 40,
          child: Container(
            width: 40,
            height: 20,
            color: Colors.black,
          ),
        ),
        // мурн
        Positioned(
          top: 50,
          left: 50,
          child: Container(
            width: 20,
            height: 20,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}



