import 'package:flutter/material.dart';
import 'package:screen/destop/destopScreen.dart';
import 'package:screen/reusable/colors.dart';
import 'package:screen/reusable/constantWidgets.dart';
import 'package:screen/reusable/reusableHome.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 20.5,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationWidget(),
                ),
              );

              // handle the press
            },
          ),
        ],
      ),
      backgroundColor: ColorManager.graybackground,
      drawer: ReusableDrawer(),
      body: ReusableHome(
        axis: 2,
        ratio: 1,
      ),
    );
  }
}
