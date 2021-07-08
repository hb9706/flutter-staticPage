import 'dart:async';
import 'package:flutter/material.dart';
import 'package:interview/plugins/events.dart';

class MyFooter extends StatefulWidget {
  MyFooter({
    Key? key,
  }) : super();

  @override
  State<StatefulWidget> createState() => _FooterState();
}

class _FooterState extends State<MyFooter> {
  var _isVisable;
  int _count = 0;
  var timer;
  @override
  void initState() {
    _isVisable = true;
    void listen() {
      eventBus.on().listen((event) {
        print(_isVisable);
        setState(() {
          _isVisable = event;
        });
      });
    }

    timer = Timer.periodic(Duration(milliseconds: 1000), (t) {
      listen();
    });

    super.initState();
  }

  dispose() {
    timer?.canel();
    timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _isVisable ? 90 : 0,
      child: BottomNavigationBar(
        selectedItemColor: Colors.yellow,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset("images/btm_home.png"), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Image.asset("images/btm_scene.png"), title: Text('Scene')),
          BottomNavigationBarItem(
              icon: Image.asset("images/btm_service.png"),
              title: Text('Service'))
        ],
        currentIndex: 0,
      ),
    );
  }
}
