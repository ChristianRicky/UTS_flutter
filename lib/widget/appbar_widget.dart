import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.blue,
    elevation: 0,
    actions: [],
  );
}
