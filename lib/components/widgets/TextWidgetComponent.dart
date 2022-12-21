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

  static Widget textButton16NormalBlack(String data) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.black45,
      ),
    );
  }

  static Widget textButton13Normal(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 13.0),
    );
  }

  static Widget textButton13Bold(String data) {
    return Text(
      data,
      style: const TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
    );
  }

  static Widget textButton13black(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 13.0,
            color: Colors.black45,
            fontWeight: FontWeight.w500));
  }

  static Widget textButton13Grey(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 13.0,
            color: Colors.black26,
            fontWeight: FontWeight.w500));
  }

  static Widget textButton13blue(String data) {
    return Text(data,
        style: const TextStyle(
            fontSize: 13.0, color: Colors.blue, fontWeight: FontWeight.w500));
  }
}
