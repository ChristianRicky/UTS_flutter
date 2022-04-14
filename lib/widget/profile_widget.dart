import 'dart:io';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: buildImage(),
    );
  }

  Widget buildImage() => ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 99, vertical: 24),
        leading: CircleAvatar(
          backgroundColor: Colors.cyan[100],
          radius: 70,
        ),
      );
}
