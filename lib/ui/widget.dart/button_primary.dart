import 'package:flutter/material.dart';
import 'package:flutter_medic/ui/them/them.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({Key? key, this.onTab, this.text}) : super(key: key);
  final String? text;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      height: 50,
      child: ElevatedButton(
        onPressed: onTab,
        child: Text(text.toString()),
        style: ElevatedButton.styleFrom(
            primary: greenColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
