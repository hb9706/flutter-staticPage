import 'package:flutter/material.dart';
import 'package:interview/components/room.dart';
import 'package:interview/plugins/events.dart';

class MyRooms extends StatelessWidget {
  MyRooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        switch (notification.runtimeType) {
          case ScrollStartNotification:
            eventBus.fire(false);
            break;
          case ScrollEndNotification:
            eventBus.fire(true);
            break;
        }
        return true;
      },
      child: Container(
          margin: EdgeInsets.all(15),
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
                    MyRoom(
                        avator: "images/livingroom.png",
                        room: "Livingroom",
                        devicesCount: 5),
                    MyRoom(
                        avator: "images/bedroom.png",
                        room: "Bedroom",
                        devicesCount: 5),
                    MyRoom(
                        avator: "images/balcony.png",
                        room: "Balcony",
                        devicesCount: 5),
                    MyRoom(
                        avator: "images/kitchen.png",
                        room: "Ketchen",
                        devicesCount: 5),
                    MyRoom(
                        avator: "images/toilet.png",
                        room: "Toilet",
                        devicesCount: 5),
                    MyRoom(
                        avator: "images/garage.png",
                        room: "Garage",
                        devicesCount: 5),
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
          )),
    ));
  }
}
