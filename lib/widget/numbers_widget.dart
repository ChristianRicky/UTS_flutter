import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildButton(context, '40/100', 'Angular'),
            buildDivider(),
            buildButton(context, '50/100', 'Sql'),
            buildDivider(),
            buildButton(context, '60/100', 'Flutter'),
            buildDivider(),
            buildButton(context, '70/100', 'English'),
          ],
        ),
      );
  Widget buildDivider() => Container(
        height: 24,
        child: VerticalDivider(),
      );
  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(value,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 2),
          ],
        ),
      );
}
