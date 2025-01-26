import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';

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
                            Icons.announcement,
                            color: Colors.deepPurple,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alerts',
                              style: TextStyle(fontSize: 20),
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
              Expanded(child: SizedBox()),
              Image.asset('assets/images/fiction.png'),
              Expanded(child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
