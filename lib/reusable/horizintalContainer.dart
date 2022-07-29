import 'package:flutter/material.dart';
import 'package:screen/reusable/colors.dart';

class HorizontalContainer extends StatelessWidget {
  HorizontalContainer({Key? key, required this.amountOfContainer})
      : super(key: key);

  int amountOfContainer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: amountOfContainer,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.gray,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  height: 80,
                ),
              );
            })));
  }
}
