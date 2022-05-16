import 'package:flutter/material.dart';
import 'package:itour_planner/Widgets/bottom_navigation_bar.dart';
import 'package:itour_planner/Widgets/floating_action_button.dart';
import 'package:itour_planner/Widgets/notification_container.dart';
import '../Models/notification_model.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  final List<NotificationModel> _notifications = [
    NotificationModel(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
    NotificationModel(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
    NotificationModel(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
    NotificationModel(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
    NotificationModel(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
    NotificationModel(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
    NotificationModel(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
    NotificationModel(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: themeColor,
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: ListView.builder(
          itemCount: _notifications.length,
          itemBuilder: (context, index) => NotificationContainer(
              _notifications[index].dateTime,
              _notifications[index].description),
        ),
      ),
      floatingActionButton: const FloatingActionButtonContainer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: const BottomNavigationBarContainer(),
    );
  }
}
