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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: const thumbnailLoginRecented(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: const thumbnailLoginRecented(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Đăng nhập gần đây',
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            )),
          )
        ],
      ),
    );
  }
}
