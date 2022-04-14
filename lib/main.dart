import 'package:flutter/material.dart';
import 'package:uts_flutter/page/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        dividerColor: Colors.transparent,
      ),
      title: title,
      home: ProfilePage(),
    );
  }
}
