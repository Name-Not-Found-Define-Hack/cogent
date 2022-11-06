import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

const kExpandedHeight = 260.0;

class _HomeState extends State<Home> {
  late ScrollController _scrollController;

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
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
            expandedHeight: kExpandedHeight,
            title: Text("Fading out top"),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: AnimatedOpacity(
                opacity: _showTitle ? 0.0 : 1.0,
                duration: Duration(milliseconds: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30.0,
                      child: Text(
                        'M',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      backgroundColor: Colors.brown.shade100,
                    ),
                    SizedBox(height: 10),
                    Text('Animation Zone'),
                  ],
                ),
              ),
              background: Container(
                color: Colors.brown,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List<Text>.generate(70, (int i) {
                return Text("List item $i");
              }),
            ),
          ),
        ],
      ),
    );
  }
}
