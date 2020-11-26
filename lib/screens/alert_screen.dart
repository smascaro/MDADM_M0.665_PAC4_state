import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  static Widget buildTab() {
    return Tab(
      text: "Alert",
      icon: Icon(Icons.warning),
    );
  }

  void _showAlertDialog(BuildContext context) {
    var dialog = AlertDialog(
      title: Text("To state or not to state"),
      content: Text(
          "This is the content of the widget. If you are reading this, it means I successfully achieved this part of the PAC ;)."),
      actions: [
        MaterialButton(
          child: Text("Yes :)"),
          onPressed: () => {Navigator.of(context).pop()},
        )
      ],
    );
    showDialog(context: context, builder: (BuildContext context) => dialog);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: RaisedButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: Text("Show warning"),
          onPressed: () => _showAlertDialog(context),
        ),
      ),
    ]);
  }
}
