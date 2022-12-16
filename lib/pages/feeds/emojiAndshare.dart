import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/feeds/ui/common/item.dart';
import '../feeds/data/example_data.dart' as example_data;

class emojiAndshare extends StatelessWidget {
  const emojiAndshare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Row(children: [
        ItemEmojiN(
          title: 'image 1',
          imgPath: 'assets/images/img1.jpg',
          reactions: example_data.reactions,
        ),
      ]),
    ]);
  }
}
