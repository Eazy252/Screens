import 'package:flutter/material.dart';
import 'package:screen/reusable/colors.dart';
import 'package:screen/reusable/horizintalContainer.dart';

class ReusableHome extends StatelessWidget {
  ReusableHome({
    Key? key,
    required this.axis,
    required this.ratio,
  }) : super(key: key);

  double ratio;
  int axis;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: ratio,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: axis),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: ColorManager.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          )),
                    ),
                  );
                }),
          ),
        ),
        HorizontalContainer(amountOfContainer: 4)
      ],
    );
  }
}
