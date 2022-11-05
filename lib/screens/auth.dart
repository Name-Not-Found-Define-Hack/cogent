import 'package:flutter/material.dart';
import 'package:bottom_sheet/bottom_sheet.dart';

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

  @override
  void initState() {
    Future.delayed(Duration(microseconds: 0), () {
      h = (MediaQuery.of(context).size.height) * (44.5 / 100);
    });
    bottom();
    super.initState();
  }

  void bottom() {
    Future.delayed(Duration(milliseconds: 200), () {
      showFlexibleBottomSheet(
        bottomSheetColor: Color(0xff252c3c),
        isDismissible: false,
        isCollapsible: false,
        barrierColor: Color(0xff252c3c),
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
        color: Color(0xff252c3c),
        child: Container(
            color: Color(0xff252c3c),
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
          color: Colors.grey,
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
                        high = 0.65;
                        bottom();
                        h = (MediaQuery.of(context).size.height) * (65 / 100);
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
                  height: 40,
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
                    TextButton(onPressed: () {}, child: Text("Create an account",style: TextStyle(color: Color(0xffff6177)),))
                  ],
                ),
               TextFormField()
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252c3c),
    );
  }
}
