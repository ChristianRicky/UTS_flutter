import 'package:flutter/material.dart';
import 'package:uts_flutter/model/user.dart';
import 'package:uts_flutter/utils/user_preferences.dart';
import 'package:uts_flutter/widget/appbar_widget.dart';
import 'package:uts_flutter/widget/profile_widget.dart';
import 'package:uts_flutter/widget/numbers_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          // digunakkan untuk memindahkan widget dari atas ke bawah atau sebaliknya
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          buildAbout(user),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
        ],
      ),
    );
  }
}

Widget buildName(User user) => Column(
      children: [
        Text(
          user.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(
          user.email,
          style: TextStyle(color: Colors.black, fontSize: 16),
        )
      ],
    );

Widget buildUpgradeButton() => (Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[Icon(Icons.access_alarm), Text('Alarm')],
          ),
          Column(
            children: <Widget>[Icon(Icons.phone), Text('Phone')],
          ),
          Column(
            children: <Widget>[Icon(Icons.book), Text('Book')],
          ),
        ],
      ),
    ));
Widget buildAbout(User user) => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'About me',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            user.about,
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
