import 'package:flutter/material.dart';
import 'package:redi/screens/favorites_page.dart';
//import 'package:redi/screens/features.dart';

class NewHomeNavigationBar extends StatelessWidget {
  const NewHomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Library',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
        Row(
          spacing: 10,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavoritesPage())),
              child: Icon(
                Icons.favorite,
              ),
            ),
            /* GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FeaturesPage())),
              child: Icon(
                Icons.list,
                size: 30,
              ),
            )*/
          ],
        )
      ],
    );
  }
}
