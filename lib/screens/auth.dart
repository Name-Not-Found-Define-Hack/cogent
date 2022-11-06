import 'package:flutter/material.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  var issignin = false;
  var h = 100.0;
  var high = 0.45;
  var low = 0.05;
  var obsec = true;

  

  @override
  void initState() {
    Future.delayed(Duration(microseconds: 0), () {
      Container bottomscreen = initialPage(context);
      h = (MediaQuery.of(context).size.height) * (44.5 / 100);
    });
    bottom();
    super.initState();
  }

  void bottom() {
    Future.delayed(Duration(milliseconds: 200), () {
      showFlexibleBottomSheet(
        bottomSheetColor: Colors.transparent,
        isDismissible: false,
        isCollapsible: false,
        barrierColor: Colors.transparent,
        duration: Duration(milliseconds: 1500),
        minHeight: low,
        initHeight: high,
        maxHeight: high,
        context: context,
        builder: _buildBottomSheet,
        isExpand: false,
      );
    });
  } //function to show the login options

  Widget _buildBottomSheet(
    BuildContext context,
    ScrollController scrollController,
    double bottomSheetOffset,
  ) {
    return Material(
        color: Colors.transparent,
        child: Container(
            color: Colors.transparent,
            child: ListView(
                controller: scrollController,
                shrinkWrap: true,
                children: [
                  !issignin ? initialPage(context) : signinPage(context),
                ])));
  }

  Container initialPage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            height: h,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 119.79,
                  height: 38.36,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/logo_sign in.png",
                          ),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 299,
                  height: 57.82,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        issignin = true;
                        high = 0.80;
                        low = 0.45;
                        bottom();
                        h = (MediaQuery.of(context).size.height) * (80 / 100);
                      });
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 18.72),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xfffbc559)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ))),
                  ),
                ),
                SizedBox(
                  height: 17.74,
                ),
                SizedBox(
                  width: 299,
                  height: 57.82,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 18.72),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xffff6177)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ))),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container signinPage(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            height: h,
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 82,
                    height: 27.64,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/logo_sign in.png",
                            ),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 43.06),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("New user? "),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Create an account",
                          style: TextStyle(color: Color(0xffff6177)),
                        ))
                  ],
                ),
                TextFormField(
                  cursorColor: Color(0xfffbc559),
                  decoration: InputDecoration(hintText: "Email address"),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 104,
                    height: 41.19,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 13),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xfffbc559)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 130.0,
                        color: Colors.black,
                      ),
                    ),
                    Text("Or"),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 130.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 57.82,
                  width: 300,
                  child: SignInButton(Buttons.Google,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 57.82,
                  width: 300,
                  child: SignInButton(Buttons.Facebook,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 57.82,
                  width: 300,
                  child: SignInButton(Buttons.Apple,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container enterpassword(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            height: h,
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 82,
                    height: 27.64,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/logo_sign in.png",
                            ),
                            fit: BoxFit.fill)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 43.06),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("New user? "),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Create an account",
                          style: TextStyle(color: Color(0xffff6177)),
                        ))
                  ],
                ),
                TextFormField(
                  cursorColor: Color(0xfffbc559),
                  decoration: InputDecoration(hintText: "Email address"),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 104,
                    height: 41.19,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 13),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xfffbc559)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 130.0,
                        color: Colors.black,
                      ),
                    ),
                    Text("Or"),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 1.0,
                        width: 130.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 57.82,
                  width: 300,
                  child: SignInButton(Buttons.Google,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 57.82,
                  width: 300,
                  child: SignInButton(Buttons.Facebook,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 57.82,
                  width: 300,
                  child: SignInButton(Buttons.Apple,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252c3c),
      resizeToAvoidBottomInset: false,
    );
  }
}
