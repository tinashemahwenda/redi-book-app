import 'package:flutter/material.dart';
import 'package:redi/components/back_button.dart';
import 'package:redi/components/settings_tile.dart';
import 'package:redi/components/stats_box.dart';
import 'package:redi/constants/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GoBackButton(),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        child: Image.asset(
                          'assets/images/profile/face.png',
                        ),
                        radius: 80,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Tinashe',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Container(
                        width: AppMeasure.width / 1.5,
                        child: Center(
                          child: Text(
                            'Young explosive reader. He finished 10 in a month🔥',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      StatsBox(),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 20),
                      SettingsTile(
                        iconName: Icons.notifications_none,
                        settingTileName: 'Notifications',
                        redColor: false,
                      ),
                      SettingsTile(
                        iconName: Icons.settings_suggest_outlined,
                        settingTileName: 'Theme Settings',
                        redColor: false,
                      ),
                      SettingsTile(
                        iconName: Icons.bookmark_border_outlined,
                        settingTileName: 'Saved Books',
                        redColor: false,
                      ),
                      SettingsTile(
                        iconName: Icons.delete_outline_rounded,
                        settingTileName: 'Clear Profile',
                        redColor: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
