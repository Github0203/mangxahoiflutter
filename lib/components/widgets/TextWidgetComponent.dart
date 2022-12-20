import 'package:flutter/material.dart';

class CustomerTextN {
  static Widget textButton18Medium(String data) {
    return Text(
      data,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),
    );
  }

  static Widget textButton16Medium(String data) {
    return Text(
      data,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
    );
  }

  static Widget textButton16Normal(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 16.0),
    );
  }

  static Widget textButton13Normal(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 13.0),
    );
  }

  static Widget textButton13lack(String data) {
    return Text(data,
        style: const TextStyle(
          fontSize: 13.0,
          color: Colors.black45,
        ));
  }
}
