import 'package:flutter/material.dart';

class AvaterN {
  static Widget avatar40(String data) {
    return CircleAvatar(
      backgroundImage: AssetImage(data),
      radius: 20,
      // onBackgroundImageError: (e, s) {
      //   debugPrint('Lỗi ảnh, $e,$s');
      // },
    );
  }

  static Widget img50(String data) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(data),
        ),
      ),
    );
  }

  static Widget img300(String data) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(data),
        ),
      ),
    );
  }
}
