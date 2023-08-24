import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

void main(){
  runApp(
   const MaterialApp(
     title: 'Flutter Hello World',
     home: Counter(),
     debugShowCheckedModeBanner: false,
   ),
  );
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.android){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
    } else if(defaultTargetPlatform == TargetPlatform.iOS){
      return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Cupertino App"),
        ),
        child: Center(
          child: Text("Hello World"),
        ),
      );
    }
    else{
      return const Text('System not permitted!');
    }
  }
}

