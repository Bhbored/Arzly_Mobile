import 'package:arzly/shared/enums/notification_source.dart';

class NotificationItem {
  final String id;
  final String title;
  final String body;
  final NotificationSource source;
  final bool isBroadcast;
  final bool isRead;
  final DateTime createdAt;
  final String? deepLink;

  NotificationItem({
    required this.id,
    required this.title,
    required this.body,
    required this.source,
    required this.isBroadcast,
    required this.isRead,
    required this.createdAt,
    this.deepLink,
  });

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      NotificationItem(
        id: json['id'],
        title: json['title'],
        body: json['body'],
        source: NotificationSource.values.firstWhere(
          (e) => e.name == (json['source'] as String).toLowerCase(),
        ),
        isBroadcast: json['isBroadcast'] as bool,
        isRead: json['isRead'] as bool,
        createdAt: DateTime.parse(json['createdAt']),
        deepLink: json['deepLink'],
      );
}
