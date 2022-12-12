import 'package:flutter/material.dart';
import 'package:mangxahoi/components/dialog/native_ios_dialog.dart';
import 'package:mangxahoi/components/widgets/ButtonComponentMauXanhDam.dart';
import 'package:mangxahoi/components/widgets/InputTextWidget.dart';

import '../../../components/widgets/ButtonComponentMauChinh.dart';

class formLogin extends StatefulWidget {
  const formLogin({super.key});

  @override
  State<formLogin> createState() => _formLoginState();
}

class _formLoginState extends State<formLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  bool _visiblePassword = false;
  bool _hienloi = false;
  String? _email = "";
  String? _password = "";
  String? _error = "Email hoặc pass bị sai";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text('Welcome to my Familys',
                    style: TextStyle(color: Colors.white, fontSize: 23)),
              ),
              // textfield Email
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //// lỗi khi sai email hoặc mật khẩu
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: Text(
                            _hienloi ? "Email hoặc pass bị sai" : "",
                            style: const TextStyle(
                                color: Color.fromARGB(186, 244, 67, 54)),
                          )),
                      //// nhập Email
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: InputTextWidgetComponent(
                          cursorColor: Colors.white,
                          labelText: 'Email',
                          hintText: 'Email',
                          readOnly: false,
                          textEditingController: _emailTextEditingController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          onChanged: (value) {
                            setState(() {
                              _email = value!;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Chưa nhập Email';
                            } else if (RegExp(
                                        r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                                    .hasMatch(value) ==
                                false) {
                              return "Email chưa hợp lệ";
                            }
                            return null;
                          },
                          // decoration: InputDecoration(
                          //   suffixIcon: IconButton(
                          //     icon: Icon(
                          //       // Based on passwordVisible state choose the icon
                          //       _visiblePassword
                          //           ? Icons.visibility
                          //           : Icons.visibility_off,
                          //       color: Colors.transparent,
                          //     ), onPressed: () {  },
                          // )),
                        ),
                      ),

                      //// nhập Password
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: InputTextWidgetComponent(
                          obscureText: !_visiblePassword,
                          labelText: 'Mật khẩu',
                          hintText: 'Mật khẩu',
                          readOnly: false,
                          textEditingController: _passwordTextEditingController,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (value) {
                            setState(() {
                              _password = value!;
                            });
                          },
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return "Chưa nhập mật khẩu";
                            } else if (password == '123') {
                              return "Mật khẩu đúng rồi";
                            } else {
                              return 'Mật khẩu chưa đúng';
                            }
                          },
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                _visiblePassword = !_visiblePassword;
                              });
                            },
                            child: Icon(
                              _visiblePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                            ),
                          ),

                          // decoration: InputDecoration(
                          //           suffixIcon: IconButton(
                          //             icon: Icon(
                          //               // Based on passwordVisible state choose the icon
                          //               _visiblePassword
                          //                   ? Icons.visibility
                          //                   : Icons.visibility_off,
                          //               color: Colors.transparent,
                          //             ), onPressed: () {  },
                          //         )),
                        ),
                      ),

                      /////////// TextFormField Email
                      // Container(
                      //   padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      //   child: TextFormField(
                      //     validator: (value) {
                      //       if (value == null || value.isEmpty) {
                      //         return 'Chưa nhập Email';
                      //       } else if (RegExp(
                      //                   r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                      //               .hasMatch(value) ==
                      //           false) {
                      //         return 'Email không hợp lệ';
                      //       }
                      //       return null;
                      //     },
                      //     // textInputAction: TextInputAction.continueAction,
                      //     style: const TextStyle(color: Colors.white),
                      //     cursorColor: Colors.white,
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //       ),
                      //       enabledBorder: const OutlineInputBorder(
                      //         borderSide: BorderSide(
                      //             width: 1,
                      //             color: Color.fromARGB(
                      //                 255, 255, 255, 255)), //<-- SEE HERE
                      //       ),
                      //       focusedBorder: const OutlineInputBorder(
                      //         borderSide:
                      //             BorderSide(width: 1, color: Colors.white),
                      //       ),
                      //       errorBorder: const OutlineInputBorder(
                      //         borderSide: BorderSide(
                      //             width: 1,
                      //             color: Color.fromARGB(
                      //                 255, 255, 255, 255)), //<-- SEE HERE
                      //       ),
                      //       labelStyle: const TextStyle(
                      //         color: Color.fromARGB(
                      //             255, 255, 255, 255), //<-- SEE HERE
                      //       ),
                      //       labelText: 'Email',
                      //     ),
                      //   ),
                      // ),

                      // /////////// TextFormField Mật khẩu
                      // Container(
                      //   padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      //   child: TextFormField(
                      //     keyboardType: TextInputType.text,
                      //     //  controller: _visiblePassword,
                      //     obscureText:
                      //         !_visiblePassword, //This will obscure text dynamically
                      //     validator: (value) {
                      //       if (value == null || value.isEmpty) {
                      //         return 'Chưa nhập mật khẩu';
                      //       }
                      //       return null;
                      //     },
                      //     // textInputAction: TextInputAction.continueAction,
                      //     style: const TextStyle(color: Colors.white),
                      //     cursorColor: Colors.white,
                      //     decoration: InputDecoration(
                      //       suffixIcon: IconButton(
                      //         icon: Icon(
                      //           // Based on passwordVisible state choose the icon
                      //           _visiblePassword
                      //               ? Icons.visibility
                      //               : Icons.visibility_off,
                      //           color: Colors.white,
                      //         ),
                      //         onPressed: () {
                      //           // Update the state i.e. toogle the state of passwordVisible variable
                      //           setState(() {
                      //             _visiblePassword = !_visiblePassword;
                      //           });
                      //         },
                      //       ),
                      //       border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //       ),
                      //       enabledBorder: const OutlineInputBorder(
                      //         borderSide: BorderSide(
                      //             width: 1,
                      //             color: Color.fromARGB(
                      //                 255, 255, 255, 255)), //<-- SEE HERE
                      //       ),
                      //       focusedBorder: const OutlineInputBorder(
                      //         borderSide:
                      //             BorderSide(width: 1, color: Colors.white),
                      //       ),
                      //       labelStyle: const TextStyle(
                      //         color: Color.fromARGB(
                      //             255, 255, 255, 255), //<-- SEE HERE
                      //       ),
                      //       labelText: 'Mật khẩu',
                      //     ),
                      //   ),
                      // ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/forgetpass');
                            },
                            child: const Text(
                              'Quên mật khẩu?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ],
                      ),
                      ButtonComponentMauChinh(
                        onPressed: () {
                          if (_email == 'a@a.com' && _password == '123') {
                            // Navigator.pushNamed(context, '/feed');
                            const AlertDialogExample();
                          } else {
                            setState(() {
                              _hienloi = true;
                            });
                          }
                        },
                        child: const Text('Đăng nhập'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'hoặc',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ],
                      ),
                      ButtonComponentMauXanhDam(
                        onPressed: () {
                          Navigator.pushNamed(context, '/createaccount');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 19, 27, 107),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text('Tạo tài khoản'),
                      ),
                    ],
                  ),
                ),
                //////////
              ),
            ],
          ),
        ),
      ),
    );
  }
}
