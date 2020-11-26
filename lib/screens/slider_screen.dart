import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  static Tab buildTab() {
    return Tab(
      text: "Slider",
      icon: Icon(Icons.touch_app),
    );
  }

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  static const double MAX_VALUE = 100;
  double _sliderValue = MAX_VALUE / 2;

  void _updateSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [buildSliderValueText(), buildSlider()],
    );
  }

  Widget buildSliderValueText() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        "${(_sliderValue).toInt()}",
        style: TextStyle(fontSize: 42),
      ),
    );
  }

  Widget buildSlider() {
    return Slider(
      max: MAX_VALUE,
      value: _sliderValue,
      onChanged: _updateSliderValue,
    );
  }
}
