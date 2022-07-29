import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget ReusableAppbar() {
  return AppBar(
    actions: [
      IconButton(
        icon: const Icon(
          Icons.notifications,
          size: 20.5,
        ),
        onPressed: () {
          // handle the press
        },
      ),
    ],
  );
}
