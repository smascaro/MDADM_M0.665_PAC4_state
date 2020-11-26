import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  static Tab buildTab() {
    return Tab(
      text: "Switch",
      icon: Icon(Icons.touch_app),
    );
  }

  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool _isSwitchEnabled = false;

  void _toggleSwitch(bool value) {
    setState(() {
      _isSwitchEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [buildStateText(), buildSwitch()],
    );
  }

  Widget buildStateText() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        _isSwitchEnabled ? "On" : "Off",
        style: TextStyle(fontSize: 42),
      ),
    );
  }

  Widget buildSwitch() {
    return Switch(
      value: _isSwitchEnabled,
      onChanged: _toggleSwitch,
    );
  }
}
