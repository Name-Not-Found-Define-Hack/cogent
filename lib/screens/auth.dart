import 'package:flutter/material.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:page_animation_transition/animations/left_to_right_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import 'package:cogent/screens/home.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> with TickerProviderStateMixin {
  var issignin = false;
  var h = 100.0;
  var high = 0.45;
  var low = 0.05;
  var obsec = true;
  late DraggableScrollableController control;
  var op = 0.0;

  @override
  void initState() {
    control = DraggableScrollableController();
    Future.delayed(Duration(microseconds: 0), () {
      Container bottomscreen = initialPage(context);
      h = (MediaQuery.of(context).size.height) * (44.5 / 100);
    });
    bottom();
    setState(() {
      op = 1.0;
    });
    super.initState();
  }

  void bottom() {
    Future.delayed(Duration(milliseconds: 200), () {
      showFlexibleBottomSheet(
          bottomSheetColor: Colors.transparent,
          barrierColor: Colors.transparent,
          duration: Duration(milliseconds: 1500),
          minHeight: low,
          initHeight: high,
          maxHeight: high,
          context: context,
          builder: _buildBottomSheet,
          isExpand: false,
          draggableScrollableController: control);
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
                  initialPage(context),
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
                        high = 0.60;
                        low = 0.45;
                        control
                          ..jumpTo(0)
                          ..dispose();
                        // bottom();
                        h = (MediaQuery.of(context).size.height) * (58 / 100);
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
                      "Sign up",
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
    //Signin page
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
                    "Sign in",
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
                  decoration: InputDecoration(
                    hintText: "Email address",
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xfffbc559)), //<-- SEE HERE
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: obsec,
                  cursorColor: Color(0xfffbc559),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xfffbc559)), //<-- SEE HERE
                      ),
                      hintText: "password",
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              obsec = !obsec;
                            });
                          },
                          icon: !obsec
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility))),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot password",
                            style: TextStyle(color: Color(0xfffbc559)),
                          )),
                      SizedBox(
                        width: 104,
                        height: 41.19,
                        child:  ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                  PageAnimationTransition(
                                      page:  Home(),
                                      pageAnimationType:
                                          LeftToRightFadedTransition()));
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(fontSize: 13),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xfffbc559)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ))),
                          ),
                        ),
                      
                    ]),
                SizedBox(
                  height: 10,
                ),
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
      //  resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          AnimatedOpacity(
            duration: Duration(milliseconds: 600),
            opacity: issignin ? 1 : 0,
            child: Container(
              decoration: BoxDecoration(),
              height: (MediaQuery.of(context).size.height) * (40 / 100),
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage(
                  'assets/sign_in_illu.png',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedOpacity(
              opacity: op,
              duration: Duration(microseconds: 800),
              child: AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  height: !issignin
                      ? (MediaQuery.of(context).size.height) * (45 / 100)
                      : (MediaQuery.of(context).size.height) * (58 / 100),
                  child: SingleChildScrollView(
                    child: issignin ? signinPage(context) : null,
                  )),
            ),
          ),
          AnimatedOpacity(
            duration: Duration(milliseconds: 600),
            opacity: !issignin ? 1 : 0,
            child: Container(
              decoration: BoxDecoration(),
              width: (MediaQuery.of(context).size.width - 10),
              height: (MediaQuery.of(context).size.height) * (67 / 100),
              alignment: Alignment.center,
              child: Image(image: AssetImage('assets/auth_illu.png')),
            ),
          ),
        ],
      ),
    );
  }
}
