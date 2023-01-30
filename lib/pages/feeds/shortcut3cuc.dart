import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';

class shortcut3cuc extends StatelessWidget {
  const shortcut3cuc({super.key});

  @override
  Widget build(BuildContext context) {
    double setweidththucong = MediaQuery.of(context).size.width;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(children: <Widget>[
              const icon_phonghopmat(),
              CustomerTextN.textButton13Normal('Phòng họp mặt'),
            ]),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(children: <Widget>[
              const icon_video(),
              CustomerTextN.textButton13Normal('Video trực tiếp'),
            ]),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(children: <Widget>[
              const icon_sukien(),
              CustomerTextN.textButton13Normal('Tạo sự kiện'),
            ]),
          ),
        ],
      ),
    );
  }
}
