import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redi/constants/constants.dart';
import 'package:redi/screens/homescreen.dart';

class HomeSplashScreen extends StatelessWidget {
  const HomeSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
              child: SvgPicture.asset(
                'assets/images/splash_2.svg',
                width: AppMeasure.width,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Where stories \nwait to be told!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Indulge in the magic of storytelling through\n our Redi Books as our authors weave tales that will captivate, inspire & transform you!',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    backgroundColor: Colors.black,
                    radius: 30,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
