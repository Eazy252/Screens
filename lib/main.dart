import 'package:flutter/material.dart';
import 'package:screen/Convasation/convasationScreen.dart';
import 'package:screen/destop/destopScreen.dart';
import 'package:screen/mobile/mobileScreen.dart';
import 'package:screen/resposive.dart';
import 'package:screen/tablet/tabletScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResposiveLayout(
        desktopScreen: DestopScreen(),
        mobileScreen: MobileScreen(),
        tabletScreen: const TabletScreen(),
      ),
      routes: {
        'home': (context) => ResposiveLayout(
              mobileScreen: MobileScreen(),
              tabletScreen: TabletScreen(),
              desktopScreen: DestopScreen(),
            ),
        'convasation': (context) => ConvasationScreen(),
      },
    );
  }
}
