import 'package:flutter/material.dart';

class MyRoom extends StatelessWidget {
  var avator;
  var room;
  var devicesCount;

  MyRoom({
    required this.avator,
    required this.room,
    required this.devicesCount,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border: new Border.all(width: 1, color: Colors.white),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 1),
                blurRadius: 1,
                spreadRadius: 0,
              )
            ]),
        height: 80,
        margin: EdgeInsets.only(top: 15),
        child: Flex(direction: Axis.horizontal, children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(
              avator,
              width: 40,
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text(room,
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(devicesCount.toString() + " Devices",
                            style: TextStyle(color: Colors.grey, fontSize: 18)))
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Icon(Icons.expand_more),
          )
        ]),
      ),
    );
  }
}
