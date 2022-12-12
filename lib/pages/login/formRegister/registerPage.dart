import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/login/formLogin/icon_logo.dart';
import 'package:mangxahoi/pages/login/formRegister/formRegister.dart';

class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    double setpaddingthucong = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                left: 10,
                right: 10),
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //////// logo
                    const iconLogoComponent(),

                    //////// đăng ký
                    Container(
                      width: setpaddingthucong,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(144, 255, 255, 255),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0))),
                      // child: const formForgetPass(),
                      child: IndexedStack(
                        index: 0,
                        children: const <Widget>[formRegister()],
                      ),
                    ),
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
