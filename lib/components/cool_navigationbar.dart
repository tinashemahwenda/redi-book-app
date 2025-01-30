import 'package:flutter/material.dart';
//import 'package:redi/screens/leaderboard.dart';
import '../screens/favorites_page.dart';
import '../screens/profile_page.dart';

class CoolNavigationbar extends StatelessWidget {
  const CoolNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(child: Icon(Icons.menu)),
        Row(
          spacing: 10,
          children: [
            Row(
              spacing: 5,
              children: [
                Icon(
                  Icons.access_alarms_rounded,
                  color: Colors.deepPurpleAccent,
                ),
                Text(
                  '6',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavoritesPage())),
              child: Icon(
                Icons.favorite,
                color: Colors.deepPurpleAccent,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage())),
              child: CircleAvatar(
                backgroundColor: Colors.grey[300],
                child: Image.asset('assets/images/profile/face.png', width: 20),
              ),
            )
          ],
        )
      ],
    );
  }
}
