import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class appBarComponent extends StatelessWidget {
  const appBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const icon_Logo(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: phimtatthem(),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: icon_search(),
            ),
            icon_tinnhan(),
          ],
        ),
      ],
    );
  }
}
