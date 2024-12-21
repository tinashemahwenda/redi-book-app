import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:redi/constants/constants.dart';

class BookListing extends StatelessWidget {
  const BookListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              Expanded(child: SizedBox()),
              Expanded(child: SizedBox()),
              Lottie.asset(
                'assets/animations/book-loading.json',
                width: AppMeasure.width / 1.5,
              ),
              Text(
                'Lists Coming Soon',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Expanded(child: SizedBox()),
              Expanded(child: SizedBox()),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    color: Colors.black,
                    child: Text(
                      'Go Back',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ));
  }
}
