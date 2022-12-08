import 'package:flutter/material.dart';
import 'package:mangxahoi/components/login/thumbnail_loginrecented.dart';

class loginRecented extends StatelessWidget {
  const loginRecented({super.key});

  @override
  Widget build(BuildContext context) {
    double setpaddingthucong = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: thumbnailLoginRecented(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: thumbnailLoginRecented(),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
