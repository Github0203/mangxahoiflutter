import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextButtonWidgetComponent.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/main.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';

class feedPage extends StatefulWidget {
  const feedPage({super.key});

  @override
  State<feedPage> createState() => _feedPageState();
}

class _feedPageState extends State<feedPage> {
  int _selectedIndex = 0;

  void _onItemTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  static const List<Widget> _pages = <Widget>[
                   icon_Logo(),
                      storiesFeed(),
                      icon_album(),
  ];

  @override
  Widget build(BuildContext context) {
    double setweidththucong = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          // Padding(
          // padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          SizedBox(
              width: setweidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponent(),
              )),
          // ),
        ],
      ),
      body: Center(
        // child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: <Widget>[
        //       Column(
        //         children: [
        //           IndexedStack(
        //             index: 1,
        //             children: <Widget>[
        //               icon_Logo(),
        //               storiesFeed(),
        //               icon_Logo(),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 50.0,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[                      
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                        child: const icon_bangtin(),
                        ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        child: const icon_themban()
                        ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                        child: const icon_videofeed(),
                        ),                      
                    ],
                  ),
                ),
                Expanded(flex: 3, child: Container()),
                Expanded(
                  flex: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const icon_nhom(),
                      const icon_thongbao(),
                      Stack(
                        children: const <Widget>[
                          icon_ava(),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: icon_menunho(),
                            ),
                          ),
                        ],
                        // children: [
                        //   icon_ava(),
                        //   icon_menunho(),
                        // ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
