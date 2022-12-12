import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class appBarComponent extends StatelessWidget {
  const appBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const icon_Logo(),
        Row(
          children: const <Widget>[
            phimtatthem(),
            icon_timkiemtrongtrang(),
            icon_tinnhan(),
          ],
        ),
      ],
    );
  }
}
