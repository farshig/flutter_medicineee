import 'package:flutter/material.dart';
import 'package:flutter_medic/ui/pages/register_page.dart';
import 'package:flutter_medic/ui/widget.dart/button_primary.dart';
import 'package:flutter_medic/ui/widget.dart/general_logo_space.dart';
import 'package:flutter_medic/ui/widget.dart/widget_ilustration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralLogoSpace(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            widgetIlustration(
                image: "assets/splash_ilustration.png",
                title: "راه حل پزشکی خود را پیدا کنید",
                subtitle1: "با یک دکتر مشورت کنید",
                subtitle2: "هر کجا و هر کجا بخواهند",
                child: ButtonPrimary(
                  text: "شروع",
                  onTab: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPages()));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
