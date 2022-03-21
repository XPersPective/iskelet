import 'package:flutter/material.dart';

import 'package:iskelet_datepicker/iskelet_datepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? startTime;
  DateTime? endTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 500,
              child: WsDatePicker(
                titleStyle: const TextStyle(fontSize: 11),
                subtitleStyle: const TextStyle(fontSize: 10),
                direction: Axis.horizontal,
                showHour: false,
                isExpand: true,
                showMinute: false,
                showSecond: false,
                showMillisecond: false,
                showMicroSecond: false,
                onChanged: (startTime, endTime) {
                  this.startTime =
                      DateTime.fromMillisecondsSinceEpoch(startTime.millisecondsSinceEpoch, isUtc: startTime.isUtc);
                  this.endTime =
                      DateTime.fromMillisecondsSinceEpoch(endTime.millisecondsSinceEpoch, isUtc: endTime.isUtc);
                  setState(() {});
                },
              ),
            ),
            Text(
              'Start Time:${startTime ?? ""}',
            ),
            Text(
              'End Time:${endTime ?? ""}',
            ),
          ],
        ),
      ),
    );
  }
}
