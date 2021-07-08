import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:interview/views/rooms.dart';
import 'package:interview/views/devices.dart';
import 'layouts/footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 2, child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 280,
            elevation: 0.0,
            leadingWidth: 60,
            leading: Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.fromLTRB(20, 0, 0, 180),
                child: Image.asset(
                  "images/image.png",
                  width: 40,
                  height: 40,
                )),
            actions: [
              Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 180),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Align(
                          child: Container(
                              width: 40,
                              height: 40,
                              child: OutlineButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ))),
                      Align(
                        child: Icon(
                          Icons.add,
                          size: 24,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ))
            ],
            flexibleSpace: Expanded(
                child: Container(
                    margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Text(
                              "Good Morining",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )),
                        Container(
                            margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: Row(children: [
                              Text("SUNNY 32°C · SUNDAY, SEP 7",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                              Container(
                                width: 6,
                              ),
                              Image.asset("images/weather.png")
                            ])),
                        Container(
                          height: 30,
                        ),
                        Row(
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 80),
                              child: FlatButton(
                                  highlightColor: Colors.white,
                                  splashColor: Colors.white,
                                  onPressed: () {},
                                  child: Column(
                                    children: [
                                      Image.asset("images/light.png"),
                                      Container(
                                        height: 10,
                                      ),
                                      Text("Light",
                                          style: TextStyle(fontSize: 12)),
                                      Container(
                                        height: 5,
                                      ),
                                    ],
                                  )),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 80),
                              child: FlatButton(
                                  highlightColor: Colors.white,
                                  splashColor: Colors.white,
                                  onPressed: () {},
                                  child: Column(
                                    children: [
                                      Image.asset("images/night.png"),
                                      Container(
                                        height: 10,
                                      ),
                                      Text("Night",
                                          style: TextStyle(fontSize: 12)),
                                      Container(
                                        height: 5,
                                      ),
                                    ],
                                  )),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 100),
                              child: FlatButton(
                                  onPressed: () {},
                                  highlightColor: Colors.white,
                                  splashColor: Colors.white,
                                  child: Column(
                                    children: [
                                      Image.asset("images/lamp.png"),
                                      Container(
                                        height: 10,
                                      ),
                                      Text("Table-lamp",
                                          style: TextStyle(fontSize: 12)),
                                      Container(
                                        height: 5,
                                      ),
                                    ],
                                  )),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 85),
                              child: FlatButton(
                                  onPressed: () {},
                                  highlightColor: Colors.white,
                                  splashColor: Colors.white,
                                  child: Column(
                                    children: [
                                      Image.asset("images/home.png"),
                                      Container(
                                        height: 10,
                                      ),
                                      Text("Go home",
                                          style: TextStyle(fontSize: 12)),
                                      Container(
                                        height: 5,
                                      ),
                                    ],
                                  )),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints(maxWidth: 80),
                              child: FlatButton(
                                  onPressed: () {},
                                  highlightColor: Colors.white,
                                  splashColor: Colors.white,
                                  child: Column(
                                    children: [
                                      Image.asset("images/work.png"),
                                      Container(
                                        height: 10,
                                      ),
                                      Text("Work",
                                          style: TextStyle(fontSize: 12)),
                                      Container(
                                        height: 5,
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ))),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(66.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: TabBar(
                    indicatorColor: Colors.yellow,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    tabs: [
                      Container(
                          width: 70,
                          child: Text(
                            "Rooms",
                            style: TextStyle(fontSize: 20),
                          )),
                      Container(
                          width: 80,
                          child: Text(
                            "Devices",
                            style: TextStyle(fontSize: 20),
                          ))
                    ],
                  ),
                ))),
        body: TabBarView(
          children: [
            MyRooms(),
            MyDevices(),
          ],
        ),
        bottomNavigationBar: MyFooter());
  }
}
