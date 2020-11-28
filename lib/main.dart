import 'package:flutter/material.dart';

void main() {
  runApp(Counter());
}

class Counter extends StatefulWidget {
  Counter({Key key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _i = 0;

  increment() {
    if (_i == 10) {
      _i = 0;
    }

    setState(() {
      _i++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff434343),
        appBar: AppBar(
          title: Text('Hello world!'),
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Text(
            'You clicked the button ' + _i.toString() + ' times',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child: Text('+'),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
