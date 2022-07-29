import 'package:flutter/material.dart';
import 'package:screen/reusable/colors.dart';
import 'package:screen/reusable/constantWidgets.dart';
import 'package:screen/reusable/horizintalContainer.dart';
import 'package:screen/reusable/reusableHome.dart';

class DestopScreen extends StatelessWidget {
  const DestopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorManager.darkGray),
      backgroundColor: ColorManager.graybackground,
      body: SizedBox(
        child: Row(
          children: [
            const Expanded(
              child: ReusableDrawer(),
            ),
            Expanded(
              flex: 2,
              child: ReusableHome(
                axis: 4,
                ratio: 4,
              ),
            ),
            const NotificationWidget(),
          ],
        ),
      ),
      // drawerEnableOpenDragGesture: true,
    );
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('N O T I F I C A T I O S '),
                Icon(
                  Icons.notifications,
                  color: ColorManager.red,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 20,
              color: ColorManager.blue,
            ),
            HorizontalContainer(amountOfContainer: 6)
          ],
        ),
      ),
    );
  }
}
