import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballNo = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything 👀',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text('Ask me anything 👀'),
        ),
        body: Container(
          color: Colors.blue,
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNo = Random().nextInt(5) + 1;
              });
            },
            child: Center(child: Image.asset('images/ball$ballNo.png')),
          ),
        ),
      ),
    );
  }
}
