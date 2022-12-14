import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/feeds/storiesFeed.dart';

class feedComponent extends StatelessWidget {
  const feedComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        storiesFeed(),
      ],
    );
  }
}
