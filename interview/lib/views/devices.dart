import 'package:flutter/material.dart';
import 'package:interview/components/device.dart';
import 'package:interview/plugins/events.dart';

class MyDevices extends StatelessWidget {
  MyDevices({Key? key}) : super(key: key);

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
                margin: EdgeInsets.all(10),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 8.0,
                  ),
                  // TODO: fluuter 循环组件
                  children: <Widget>[
                    MyDevice(
                        color: Colors.lightBlue,
                        icon: "images/smt_pir.png",
                        deviceName: "Smart PIR",
                        deviceFetcher: "motion",
                        deviceInfo: "detector",
                        ftDesc: "1F-home",
                        statusIcon: "images/red.png"),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_pir.png",
                        deviceName: "Smart PIR",
                        deviceFetcher: "motion",
                        deviceInfo: "detector",
                        ftDesc: "1F-home",
                        statusIcon: "images/gray.png"),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_pir.png",
                        deviceName: "Smart PIR",
                        deviceFetcher: "motion",
                        deviceInfo: "detector",
                        ftDesc: "1F-home",
                        statusIcon: "images/green.png"),
                    MyDevice(
                        color: Colors.black12,
                        icon: "images/smt_pir.png",
                        deviceName: "Smart PIR",
                        deviceFetcher: "motion",
                        deviceInfo: "detector",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_scene.png",
                        deviceName: "Smart PIR",
                        deviceFetcher: "switch",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_embed.png",
                        deviceName: "Smart",
                        deviceFetcher: "embedded",
                        deviceInfo: "switch",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_wall.png",
                        deviceName: "Smart wall",
                        deviceFetcher: "switch",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_light.png",
                        deviceName: "Light sensor",
                        deviceFetcher: "",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_temperature.png",
                        deviceName: "Temperature",
                        deviceFetcher: "&Humidity",
                        deviceInfo: "sensor",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_contact.png",
                        deviceName: "Contact",
                        deviceFetcher: "sensor",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: "images/green.png"),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_water.png",
                        deviceName: "Water leakage",
                        deviceFetcher: "sensor",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: "images/green.png"),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_honeywell.png",
                        deviceName: "Honeywell",
                        deviceFetcher: "smoke",
                        deviceInfo: "detector",
                        ftDesc: "1F-home",
                        statusIcon: "images/green.png"),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_sound.png",
                        deviceName: "Smart sound",
                        deviceFetcher: "warner",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_gas.png",
                        deviceName: "Figaro gas",
                        deviceFetcher: "detector",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: "images/green.png"),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_chain.png",
                        deviceName: "Chain",
                        deviceFetcher: "controller",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: "images/green.png"),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_camera.png",
                        deviceName: "Camera",
                        deviceFetcher: "",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_garage.png",
                        deviceName: "Garage door",
                        deviceFetcher: "opener",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                    MyDevice(
                        color: Colors.white,
                        icon: "images/smt_ir.png",
                        deviceName: "Smart IR",
                        deviceFetcher: "",
                        deviceInfo: "",
                        ftDesc: "1F-home",
                        statusIcon: ""),
                  ],
                ))));
  }
}
