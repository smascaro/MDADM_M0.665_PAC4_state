import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state/util/DateTimeFormatter.dart';

class DateScreen extends StatefulWidget {
  @override
  _DateScreenState createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  String _currentDate = DateTimeFormatter.format(DateTime.now(), Format.DATE_HOUR);

  String _getCurrentDateString() => DateTimeFormatter.format(DateTime.now(), Format.DATE_HOUR);

  void _updateDate() {
    setState(() {
      _currentDate = _getCurrentDateString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildDateText(),
        buildUpdateButton()
      ],
    );
  }

  Widget buildDateText() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Text(
        _currentDate,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 42),
      ),
    );
  }

  RaisedButton buildUpdateButton() {
    return RaisedButton(
        child: Text("Update date"),
        onPressed: _updateDate,
      );
  }
}
