import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            flexibleSpace: Container(
                margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        child: Text(
                          "Good Morining",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(15, 5, 0, 0),
                        child: Row(children: [
                          Text("SUNNY 32°C · SUNDAY, SEP 7",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
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
                                  Text("Light", style: TextStyle(fontSize: 12)),
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
                                  Text("Night", style: TextStyle(fontSize: 12)),
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
                                  Text("Work", style: TextStyle(fontSize: 12)),
                                  Container(
                                    height: 5,
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                )),
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

class MyRooms extends StatelessWidget {
  MyRooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "1F",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: new Border.all(width: 1, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]),
                    height: 80,
                    margin: EdgeInsets.only(top: 15),
                    child: Flex(direction: Axis.horizontal, children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          "images/livingroom.png",
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
                                Text("Livingroom",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text("5 Devices",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18)))
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.expand_more),
                      )
                    ]),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: new Border.all(width: 1, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]),
                    height: 80,
                    margin: EdgeInsets.only(top: 15),
                    child: Flex(direction: Axis.horizontal, children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          "images/bedroom.png",
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
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Bedroom",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20))),
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text("5 Devices",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18)))
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.expand_more),
                      )
                    ]),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: new Border.all(width: 1, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]),
                    height: 80,
                    margin: EdgeInsets.only(top: 15),
                    child: Flex(direction: Axis.horizontal, children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          "images/balcony.png",
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
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Balcony",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20))),
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text("5 Devices",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18)))
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.expand_more),
                      )
                    ]),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: new Border.all(width: 1, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]),
                    height: 80,
                    margin: EdgeInsets.only(top: 15),
                    child: Flex(direction: Axis.horizontal, children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset("images/kitchen.png"),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Kitchen",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20))),
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text("5 Devices",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18)))
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.expand_more),
                      )
                    ]),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: new Border.all(width: 1, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]),
                    height: 80,
                    margin: EdgeInsets.only(top: 15),
                    child: Flex(direction: Axis.horizontal, children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset("images/toilet.png"),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Toilet",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20))),
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text("5 Devices",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18)))
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.expand_more),
                      )
                    ]),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: new Border.all(width: 1, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 3),
                            blurRadius: 3,
                            spreadRadius: 0,
                          )
                        ]),
                    height: 80,
                    margin: EdgeInsets.only(top: 15),
                    child: Flex(direction: Axis.horizontal, children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset("images/garage.png"),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Garage",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20))),
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text("5 Devices",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18)))
                              ],
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Icon(Icons.expand_more),
                      )
                    ]),
                  ),
                  Container(
                      height: 60,
                      margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                      child: OutlineButton.icon(
                        icon: Icon(Icons.add),
                        label: Text(
                          "Add Room",
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      )),
                ],
              ),
            )
          ],
        ));
  }
}

class MyDevices extends StatelessWidget {
  MyDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.8,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 8.0,
          ),
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: new Border.all(width: 1, color: Colors.white),
              ),
              child: Column(
                children: [
                  Flex(direction: Axis.horizontal, children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            "images/smt_pir.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/red.png",
                            width: 10,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Smart PIR",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("motion",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("detector",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_pir.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/gray.png",
                            width: 10,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Smart PIR",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("motion",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("detector",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_pir.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/green.png",
                            width: 10,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Smart PIR",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("motion",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("detector",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: new Border.all(width: 1, color: Colors.white),
              ),
              child: Column(
                children: [
                  Flex(direction: Axis.horizontal, children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topLeft,
                          width: 30,
                          child: Image.asset(
                            "images/smt_pir.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(""))),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Smart PIR",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("motion",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("detector",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          width: 30,
                          child: Image.asset(
                            "images/smt_scene.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/more.png",
                            width: 20,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Smart scene",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("swich",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_embed.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/more.png",
                            width: 20,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child:
                                Text("Smart", style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("embedded",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("switch",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_wall.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/more.png",
                            width: 20,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Smart wall",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("switch",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_light.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(""))),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Light sensor",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_temperature.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(""),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Temperature",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("&Humidity",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("sensor",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_contact.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/green.png",
                            width: 10,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child:
                                Text("Contact", style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("sensor",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_water.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/green.png",
                            width: 10,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Water leakage",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("sensor",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_honeywell.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/green.png",
                            width: 10,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Honeywell",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("smoke",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("detector",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_sound.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(""),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Smart sound",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("warner",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_gas.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/green.png",
                            width: 10,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Figaro gas",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("detector",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_chain.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Image.asset(
                            "images/green.png",
                            width: 10,
                          ),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child:
                                Text("Chain", style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("controller",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_camera.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(""),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child:
                                Text("Camera", style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_garage.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(""),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Garage door",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("opener",
                                  style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  border: new Border.all(width: 1, color: Colors.white),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 3),
                      blurRadius: 0,
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
                          child: Image.asset(
                            "images/smt_ir.png",
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(""),
                        )),
                  ]),
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text("Smart IR",
                                style: TextStyle(fontSize: 16)),
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text("", style: TextStyle(fontSize: 16))),
                          Container(
                            height: 40,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "1F-home",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            // ----------------------
          ],
        ));
  }
}

class MyFooter extends StatelessWidget {
  MyFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      selectedItemColor: Colors.yellow,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Image.asset("images/btm_home.png"), title: Text('Home')),
        BottomNavigationBarItem(
            icon: Image.asset("images/btm_scene.png"), title: Text('Scene')),
        BottomNavigationBarItem(
            icon: Image.asset("images/btm_service.png"), title: Text('Service'))
      ],
      currentIndex: 0,
    );
  }
}
