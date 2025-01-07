import 'package:flutter/material.dart';
import 'package:screen_brightness/screen_brightness.dart';

class BrightnessControl extends StatefulWidget {
  const BrightnessControl({super.key});

  @override
  State<BrightnessControl> createState() => _BrightnessControlState();
}

class _BrightnessControlState extends State<BrightnessControl> {
  double _brightness = 0.5;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slider(
        activeColor: Colors.black,
        value: _brightness,
        min: 0,
        max: 1,
        onChanged: (value) => setState(() {
          _brightness = value;

          try {
            ScreenBrightness().setScreenBrightness(_brightness);
          } catch (e) {
            print('Error in slider $e');
          }
        }),
      ),
    );
  }
}
