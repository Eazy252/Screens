import 'package:flutter/material.dart';
import 'package:screen/reusable/colors.dart';
import 'package:screen/reusable/constantWidgets.dart';
import 'package:screen/reusable/reusableHome.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              size: 20.5,
            ),
            onPressed: () {
              // handle the press
            },
          ),
        ], backgroundColor: ColorManager.darkGray),
        backgroundColor: ColorManager.graybackground,
        drawer: const ReusableDrawer(),
        body: ReusableHome(
          axis: 4,
          ratio: 4,
        ));
  }
}
