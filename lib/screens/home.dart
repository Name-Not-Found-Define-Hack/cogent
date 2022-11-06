import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

const kExpandedHeight = 260.0;

class _HomeState extends State<Home> {
  late ScrollController _scrollController;
  var _selectedindex = 0;
  @override
  void initState() {
    super.initState();

   _scrollController = ScrollController()..addListener(() => setState(() {}));
  }

  bool get _showTitle {
    print(kToolbarHeight * 2);

    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - (kToolbarHeight * 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
      
        child: CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
              expandedHeight:400,
              title: Text("Fading out top"),
              flexibleSpace: FlexibleSpaceBar(
      
                centerTitle: true,
                title: AnimatedOpacity(
                  
                  opacity: _showTitle ? 0.0 : 1.0,
                  duration: Duration(milliseconds: 100),
                  child:Container(
                    
                    height: double.infinity,
                    child: ImageSlideshow(children: [
                      Image.asset(
                                'assets/bg_@.png',
                                fit: BoxFit.scaleDown,
                              ),Image.asset(
                                'assets/bg_1.png',
                                fit: BoxFit.scaleDown,
                              ),Image.asset(
                                'assets/bg_3.png',
                                fit: BoxFit.scaleDown,
                              ),Image.asset(
                                'assets/bg_4.png',
                                fit: BoxFit.scaleDown,
                              ),Image.asset(
                                'assets/bg_5.png',
                                fit: BoxFit.scaleDown,
                              ),Image.asset(
                                'assets/bg_6.png',
                                fit: BoxFit.scaleDown,
                              ),Image.asset(
                                'assets/bg_8.png',
                                fit: BoxFit.scaleDown,
                              ),
                    ]),
                  )
                ),
                background: Container(
                  color: Colors.black,
                ),
              ),
            ),
           
          ],
        ),
      ),
      bottomNavigationBar: GNav(rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Color(0xff252c3c),

              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Color(0xffffffff),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.school,
                  text: 'Likes',
                ),
                GButton(
                  icon:Icons.,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedindex,
              onTabChange: (index) {
                setState(() {
                  _selectedindex = index;
                });
              },
            )
      
    );
  }
}
