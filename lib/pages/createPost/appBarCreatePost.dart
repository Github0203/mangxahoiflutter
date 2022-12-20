import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';

class appBarCreatePost extends StatefulWidget {
  const appBarCreatePost({super.key});

  @override
  State<appBarCreatePost> createState() => _appBarCreatePostState();
}

class _appBarCreatePostState extends State<appBarCreatePost> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            GestureDetector(
                onTap: () => Navigator.pop(context), child: const icon_trove()),
          ],
        ),
        CustomerTextN.textButton13lack('Lưu'),
      ],
    );
  }
}
