import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/login/login_recented.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double setpaddingthucong = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/png/hinhnen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: setpaddingthucong * 0.1,
              bottom: setpaddingthucong * 0.05,
              left: setpaddingthucong * 0.05,
              right: setpaddingthucong * 0.05),
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: setpaddingthucong * 0.1,
                        bottom: setpaddingthucong * 0.1,
                        left: setpaddingthucong * 0.05,
                        right: setpaddingthucong * 0.05),
                    child: const icon_logolon(),
                  ),
                  const loginRecented(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
