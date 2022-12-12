import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/feeds/appBAr/appBarComponent.dart';

class feedPage extends StatelessWidget {
  const feedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const <Widget>[
          appBarComponent(),
        ],
      ),
      body: Container(),
    );
  }
}
