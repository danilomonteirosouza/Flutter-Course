/*
Learn about widgets follow: Text, Center, Column, ProgressIndicator and ElevatedButton
Obs.: Respectively in iOS
*/
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class LearnWidget extends StatefulWidget {
  const LearnWidget({Key? key}) : super(key: key);

  @override
  State<LearnWidget> createState() => _LearnWidgetState();
}

class _LearnWidgetState extends State<LearnWidget> {
  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.android){
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Learn about widgets',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
          actions: const <Widget>[],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
                'Progress Indicator and Button',
                style: TextStyle(
                    fontSize: 25
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: (){},
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    }else if(defaultTargetPlatform == TargetPlatform.iOS){
      return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Learn about widgets'),
        ),
        child: Center(
            child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Center(
                    child: Text(
                      'Progress Indicator and Button',
                      style: TextStyle(
                          fontSize: 25
                      ),
                    ),
                  ),
                  Center(
                    child: CupertinoButton.filled(
                      onPressed: (){},
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      );
    } else {
      return const Text('System not detected');
    }
  }
}
