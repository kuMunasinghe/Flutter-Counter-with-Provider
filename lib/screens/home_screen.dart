// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/provider/counter_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Provider ${context.watch<Counter>().count}"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("You have pressed the button; this time ${context.watch<Counter>().count}"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: ()=>context.read<Counter>().decrement(),
            key: Key("decrement_floatActionButton"),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () =>context.read<Counter>().zero(),
            key: Key("Reset_floatActionButton"),
            tooltip: "Reset",
            child: Icon(Icons.exposure_zero ),
          ),
          FloatingActionButton(
            onPressed: ()=>context.read<Counter>().increment(),
            key: Key("increment_floatActionButton"),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
