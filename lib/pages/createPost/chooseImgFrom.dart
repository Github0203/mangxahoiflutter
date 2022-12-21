import 'package:flutter/material.dart';
import 'package:mangxahoi/components/appBar/appBarBackN.dart';

class chooseImgFrom extends StatefulWidget {
  const chooseImgFrom({super.key});

  @override
  State<chooseImgFrom> createState() => _chooseImgFromState();
}

class _chooseImgFromState extends State<chooseImgFrom> {
  @override
  Widget build(BuildContext context) {
    double setwidththucong = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          SizedBox(
              width: setwidththucong,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: appBarN.appBarNotSave('Chọn ảnh'),
              )),
          // ),
        ],
      ),
      body: const DefaultTabController(
        length: 3,
        child: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
            Tab(icon: Icon(Icons.directions_bike)),
            Tab(icon: Icon(Icons.directions_bike)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
    );
  }
}
