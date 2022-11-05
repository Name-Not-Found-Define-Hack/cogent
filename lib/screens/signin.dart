import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252c3c),
      body: Column(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height) * (55.5 / 100),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            width: double.infinity,
            height: (MediaQuery.of(context).size.height) * (44.5 / 100),
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
                SizedBox(height: 40,),
                SizedBox(
                  width: 299,
                  height: 57.82,
                  child: ElevatedButton(onPressed: () {}, child: Text("Sign in",style:TextStyle(fontSize: 18.72) ,),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>( Color(0xfffbc559)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      
                    ))
                  ),
                  ),
                ),
                SizedBox(height: 17.74,),
                 SizedBox(
                  width: 299,
                  height: 57.82,
                  child: ElevatedButton(onPressed: () {}, child: Text("Sign in",style:TextStyle(fontSize: 18.72) ,),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>( Color(0xffff6177)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      
                    ))
                  ),
                  ),
                ),
              ],
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(50))
            // ),
          )
        ],
      ),
    );
  }
}