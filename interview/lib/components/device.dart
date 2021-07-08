import 'package:flutter/material.dart';

class MyDevice extends StatelessWidget {
  var color;
  var icon;
  var ftDesc;
  var statusIcon;
  var deviceName;
  var deviceFetcher;
  var deviceInfo;

  MyDevice({
    required this.color,
    required this.icon,
    required this.deviceName,
    required this.deviceFetcher,
    required this.ftDesc,
    required this.statusIcon,
    required this.deviceInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8),
      decoration: new BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          border: new Border.all(width: 1, color: Colors.white),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 1),
              blurRadius: 1,
              spreadRadius: 0,
            )
          ]),
      child: Column(
        children: [
          Flex(direction: Axis.horizontal, children: [
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Image.asset(icon.toString()),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(bottom: 10),
                  child: statusIcon != ""
                      ? Image.asset(
                          statusIcon.toString(),
                          width: 10,
                        )
                      : Text(""),
                )),
          ]),
          Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(deviceName.toString(),
                        style: TextStyle(fontSize: 16)),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(deviceFetcher.toString(),
                          style: TextStyle(fontSize: 16))),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text(deviceInfo.toString(),
                          style: TextStyle(fontSize: 16))),
                  Container(
                    height: 40,
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      ftDesc.toString(),
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
