import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/pages/login/formLogin/formlogin.dart';
import 'package:mangxahoi/pages/login/formLogin/icon_logo.dart';
import 'package:mangxahoi/pages/login/login_recented.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double setpaddingthucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/png/hinhnen.png"),
              fit: BoxFit.fill,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //////// logo
                    const iconLogoComponent(),

                    //////// login recented
                    const loginRecented(),
                    Padding(
                      padding: EdgeInsets.all(setpaddingthucong * 0.1),
                      child: const formLogin(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
