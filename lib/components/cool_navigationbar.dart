import 'package:flutter/material.dart';
import '../screens/favorites_page.dart';

class CoolNavigationbar extends StatelessWidget {
  const CoolNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            //onTap: () => Scaffold.of(context).openDrawer(),
            child: Icon(Icons.menu)),
        Row(
          spacing: 10,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavoritesPage())),
              child: Icon(
                Icons.favorite,
                color: Colors.deepPurpleAccent,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.black)),
              child: Text(
                'Leaderboard',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
