import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_medic/ui/them/them.dart';
import 'package:flutter_medic/ui/widget.dart/button_primary.dart';
import 'package:flutter_medic/ui/widget.dart/general_logo_space.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({Key? key}) : super(key: key);

  @override
  _RegisterPagesState createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  bool _securText = true;

  showHide() {
    setState(() {
      _securText = !_securText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(child: GeneralLogoSpace()),
          Container(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "ثبت نام",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "ثبت نام برای ایرانی",
                    style: TextStyle(fontSize: 15, color: greyLightColor),
                  ),
                  SizedBox(height: 8),

                  // NOTE : TEXTFIELD
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 0)
                        ],
                        color: whiteColor),
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "نام خود را وارد کنید",
                          hintStyle:
                              TextStyle(fontSize: 15, color: greyLightColor)),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 0)
                        ],
                        color: whiteColor),
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "ایمیل",
                          hintStyle:
                              TextStyle(fontSize: 15, color: greyLightColor)),
                    ),
                  ),

                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 0)
                        ],
                        color: whiteColor),
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "تلفن",
                          hintStyle:
                              TextStyle(fontSize: 15, color: greyLightColor)),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 0)
                        ],
                        color: whiteColor),
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "ادرس",
                          hintStyle:
                              TextStyle(fontSize: 15, color: greyLightColor)),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x40000000),
                              offset: Offset(0, 1),
                              blurRadius: 4,
                              spreadRadius: 0)
                        ],
                        color: whiteColor),
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      obscureText: _securText,
                      decoration: InputDecoration(
                          prefixIcon: IconButton(
                            onPressed: showHide,
                            icon: _securText
                                ? Icon(
                                    Icons.visibility_off,
                                    size: 20,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    size: 20,
                                  ),
                          ),
                          border: InputBorder.none,
                          hintText: "رمز عبور",
                          hintStyle:
                              TextStyle(fontSize: 15, color: greyLightColor)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // NOTE : BUTTON REGISTER
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ButtonPrimary(
                      text: "ثبت نام",
                      onTab: () {
                        print("register");
                      },
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
