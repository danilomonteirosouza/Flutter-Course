import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.android){
      return Scaffold(
        appBar: AppBar(
          title: const Text(
              'Make a AppBar',
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
      );
    }else if(defaultTargetPlatform == TargetPlatform.iOS){
      return CupertinoPageScaffold(
        child: Container(),
      );
    } else {
      return Container();
    }
  }
}
