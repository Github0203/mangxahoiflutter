import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class likeButton extends StatefulWidget {
  const likeButton({super.key});

  @override
  State<likeButton> createState() => _likeButtonState();
}

class _likeButtonState extends State<likeButton> {
  @override
  Widget build(BuildContext context) {
    bool clicked = false;
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = true;
        });
      },
      child: clicked ? const icon_likemauxanh() : const icon_like(),
    );
  }
}
