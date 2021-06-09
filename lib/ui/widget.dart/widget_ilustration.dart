import 'package:flutter/material.dart';
import 'package:flutter_medic/ui/them/them.dart';

class widgetIlustration extends StatelessWidget {
  final Widget? child;
  final String? image;
  final String? title;
  final String? subtitle1;
  final String? subtitle2;
  const widgetIlustration(
      {Key? key,
      this.child,
      this.image,
      this.title,
      this.subtitle1,
      this.subtitle2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image.toString(),
          width: 250,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          title.toString(),
          style: TextStyle(fontSize: 25, color: greyBoldColor),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          children: [
            Text(
              subtitle1.toString(),
              style: TextStyle(fontSize: 15, color: greyLightColor),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              subtitle2.toString(),
              style: TextStyle(fontSize: 15, color: greyLightColor),
            ),
            SizedBox(
              height: 40,
            ),
            child ?? SizedBox()
          ],
        )
      ],
    );
  }
}
