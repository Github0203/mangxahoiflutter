import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/components/bottomBar/bottomNavigationBar.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/tabComponent/tabFriendPage.dart';
import 'package:mangxahoi/components/widgets/AvaterN.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';
import 'package:mangxahoi/pages/feeds/feedFriendComponents.dart';

class friendHome extends StatefulWidget {
  const friendHome({super.key});

  @override
  State<friendHome> createState() => _friendHomeState();
}

class _friendHomeState extends State<friendHome> {
  @override
  Widget build(BuildContext context) {
    double setwidthThuCong = MediaQuery.of(context).size.width;
    double setheightThuCong = MediaQuery.of(context).size.height;

    return const Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      //   actions: <Widget>[
      //     SizedBox(
      //         width: setwidthThuCong,
      //         child: const Padding(
      //           padding: EdgeInsets.only(left: 8.0, right: 8.0),
      //           child: appBarComponentHavePlus(tilte: 'Lời mời kết bạn'),
      //         )),
      //     // ),
      //   ],
      // ),
      body: feedFriendComponents(),      
      // bottomNavigationBar: const appBarBottom(),
      // floatingActionButton: const floatingBarBottom(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}