import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SettingsModal extends StatelessWidget {
  const SettingsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: AppMeasure.width,
        height: AppMeasure.height / 3,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Themes & Settings',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Text Size',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    spacing: 10,
                    children: [
                      Container(
                        //padding: EdgeInsets.all(10),
                        width: AppMeasure.width / 10,
                        height: AppMeasure.height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            )),
                        child: Center(
                            child: Text(
                          'A',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )),
                      ),
                      Container(
                        //padding: EdgeInsets.all(10),
                        width: AppMeasure.width / 10,
                        height: AppMeasure.height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            )),
                        child: Center(child: Text('A')),
                      ),
                      Container(
                        width: AppMeasure.width / 10,
                        height: AppMeasure.height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: Colors.black,
                            )),
                        child: Center(
                            child: Text(
                          'A',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
