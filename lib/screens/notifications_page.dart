import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';
import 'package:redi/constants/constants.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool _selectedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GoBackButton(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 20,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.deepPurpleAccent[900],
                          radius: 30,
                          child: Icon(
                            _selectedValue
                                ? Icons.notifications_active
                                : Icons.notifications_off_outlined,
                            color: _selectedValue
                                ? Colors.deepPurple
                                : Colors.deepPurpleAccent,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alerts',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(_selectedValue
                                ? 'Turn off some notifications'
                                : 'Turn on some notifications')
                          ],
                        )
                      ],
                    ),
                    Switch(
                      value: _selectedValue,
                      onChanged: (bool newValue) {
                        setState(() {
                          _selectedValue = newValue;
                        });
                      },
                      thumbColor: WidgetStatePropertyAll(Colors.white),
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.grey[300],
                      trackOutlineColor:
                          WidgetStatePropertyAll(Colors.grey[300]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Alerts & Updates',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: AppMeasure.width,
                  height: AppMeasure.height / 10,
                  child: Row(
                    spacing: 20,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: AppMeasure.width / 1.6,
                            child: Text(
                              'New chapter added',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            'Today, 8.04am',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
