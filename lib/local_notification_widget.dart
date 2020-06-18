import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'quotes.dart';
import 'article_display.dart';

class LocalNotifications extends StatefulWidget {

  final _LocalNotificationState not;
  LocalNotifications(this.not);
  @override
  _LocalNotificationState createState() => _LocalNotificationState(not);
}

class _LocalNotificationState extends State<LocalNotifications> {
   final _LocalNotificationState not;
   _LocalNotificationState(this.not);
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  AndroidInitializationSettings androidInitializationSettings;
  IOSInitializationSettings iosInitializationSettings;
  InitializationSettings initializationSettings;
  @override
  void initState() {
    super.initState();
    initializing();
  }

  void initializing() async {
    androidInitializationSettings = AndroidInitializationSettings('app_icon');
    iosInitializationSettings = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    initializationSettings = InitializationSettings(
        androidInitializationSettings, iosInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }

  _showNotifications(id, text, body) async {
    _showNotifications(id, text, body);

    await notification(0, "", "");
  }

  Future<void> notification(int id, String text, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            'channel Id', 'channel title', 'channel body',
            priority: Priority.High,
            importance: Importance.Max,
            ticker: 'Test');
    IOSNotificationDetails iosNotificationDetails = IOSNotificationDetails();
    NotificationDetails notificationDetails =
        NotificationDetails(androidNotificationDetails, iosNotificationDetails);
    await flutterLocalNotificationsPlugin.show(
        id, text, body, notificationDetails);
  }

  Future onSelectNotification(String payload) {
    if (payload != Null) {
      print(payload);
    }
    //navigate to display the quote
  }

  //this is where we do it
  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    return CupertinoAlertDialog(
        title: Text(title),
        content: Text(body),
        actions: <Widget>[
          CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                print("object");
              },
              child: Text("Okay")),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    var button = new FloatingActionButton(
        onPressed: _showNotifications(
            random, quotes[random].text, quotes[random].author)
            );
            return button;

  }
}
