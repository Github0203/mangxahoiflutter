import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextButtonWidgetComponent.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/main.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedComponents.dart';

class feedHome extends StatefulWidget {
  const feedHome({super.key});

  @override
  State<feedHome> createState() => _feedHomeState();
}

class _feedHomeState extends State<feedHome> {
  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    feedComponents(),
    icon_Logo(),
    icon_album(),
  ];

  @override
  Widget build(BuildContext context) {
    double setweidththucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;

    return Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          SizedBox(
              width: setweidththucong,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarComponent(),
              )),
          // ),
        ],
      ),
      body: Container(
        width: setweidththucong,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 207, 207, 207),
        ),
        child: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
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
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                        child: const icon_bangtin(),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          child: const icon_themban()),
                      GestureDetector(
                        onTap: () {
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
