import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hackharvard21/utils/utils.dart';
import 'package:rxdart/rxdart.dart';

class NotificationsApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
  static final onNotifications = BehaviorSubject<String?>();
  //image local notifications in flutter

  static Future showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async =>
      _notifications.show(id, title, body, await _notificationDetails(),
          payload: payload);

  static Future initialize() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("ic_launcher");

    IOSInitializationSettings iosInitializationSettings =
        IOSInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: androidInitializationSettings,
            iOS: iosInitializationSettings);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (payload) async {
      onNotifications.add(payload);
    });
  }

  static Future _notificationDetails() async {
    const String img =
        "https://m.media-amazon.com/images/I/71ijlv+oixL._AC_SX679_.jpg";
    final bigPicturePath = await Utils.downloadFile(img, 'bigPicture');
    final styleInformation = BigPictureStyleInformation(
        FilePathAndroidBitmap(bigPicturePath),
        largeIcon: FilePathAndroidBitmap(bigPicturePath),
        contentTitle: 'Big Picture',
        summaryText: '$bigPicturePath');

    var android = AndroidNotificationDetails(
      'channel id',
      'channel name',
      importance: Importance.max,
      priority: Priority.high,
      styleInformation: styleInformation,
    );

    return NotificationDetails(android: android);
  }

  //Image notification
  static Future imageNotification() async {
    var bigPicture = BigPictureStyleInformation(
        DrawableResourceAndroidBitmap("ic_launcher"),
        largeIcon: DrawableResourceAndroidBitmap("ic_launcher"),
        contentTitle: "Time to take Aspirin",
        summaryText: "1 dose ",
        htmlFormatContent: true,
        htmlFormatContentTitle: true);

    var android = AndroidNotificationDetails("id", "channel",
        styleInformation: bigPicture);

    var platform = new NotificationDetails(android: android);

    await _notifications.show(
        0, "Time to take Aspirin", "Tap to do something", platform,
        payload: "Welcome to demo app");
  }
}
