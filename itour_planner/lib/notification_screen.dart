import 'package:flutter/material.dart';
import './notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Color themeColor = const Color.fromRGBO(173, 37, 51, 1);

  List<Notifications> notifications = [
    Notifications(
      'Today, 4:51 am',
      'Your section trip is going to start from tomorrow. And your Alhajmir check in date is 27 Nov. You have to notify the itour when you will go for check in.',
    ),
    Notifications(
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
          top: 50,
          left: 20,
          right: 20,
        ),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 4.0,
              ),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      notifications[index].dateTime,
                      style: TextStyle(
                        foreground: Paint()..color = themeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      notifications[index].description,
                      style: TextStyle(
                        foreground: Paint()..color = Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: themeColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: themeColor,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/BottomAppBarIcons/plan.png"),
              color: themeColor,
            ),
            label: 'Plan',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              const AssetImage("assets/BottomAppBarIcons/booking.png"),
              color: themeColor,
            ),
            label: 'Booking',
          ),
        ],
        selectedItemColor: themeColor,
        onTap: null,
      ),
    );
  }
}
