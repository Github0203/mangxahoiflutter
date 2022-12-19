import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class likeButton extends StatefulWidget {
  const likeButton({super.key});

  @override
  State<likeButton> createState() => _likeButtonState();
}

class _likeButtonState extends State<likeButton> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = !clicked;
        });
      },
      child: clicked ? const icon_like_gif() : const icon_like(),
    );
  }
}
