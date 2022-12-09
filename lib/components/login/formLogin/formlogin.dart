import 'package:flutter/material.dart';
import 'package:mangxahoi/test.dart';
import 'package:email_validator/email_validator.dart';

class formLogin extends StatefulWidget {
  const formLogin({super.key});

  @override
  State<formLogin> createState() => _formLoginState();
}

class _formLoginState extends State<formLogin> {

  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailTextEditingController = TextEditingController();
  final TextEditingController _passwordTextEditingController = TextEditingController();
  bool _visiblePassword = false;
  String? _email = "";
  String? _password = "";
  String? _error = "Please provide a valid email/password combination";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to my Familys',
                style: TextStyle(color: Colors.white, fontSize: 23)),
            // textfield Email
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  //   InputTextWidget(
                  //   labelText: 'Your Email Address',
                  //   hintText: 'Enter Email Address',
                  //   readOnly: false,
                  //   textEditingController: _emailTextEditingController,
                  //   keyboardType: TextInputType.emailAddress,
                  //   textInputAction: TextInputAction.next,
                  //   onChanged: (value){
                  //     setState(() {
                  //       _email = value!;
                  //     });
                  //   },
                  //   validator: (email) {
                  //     if (email != null && EmailValidator.validate(email)) {
                  //       return null;
                  //     }
                  //     return "Invalid email address";
                  //   },
                  // ),
                  // InputTextWidget(
                  //   obscureText: !_visiblePassword,
                  //   labelText: 'Your Password',
                  //   hintText: 'Enter Password',
                  //   readOnly: false,
                  //   textEditingController: _passwordTextEditingController,
                  //   textInputAction: TextInputAction.done,
                  //   keyboardType: TextInputType.visiblePassword,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _password = value!;
                  //     });
                  //   },
                  //   validator: (password) {
                  //     if (password == null || password.isEmpty) {
                  //       return "Empty password";
                  //     }
                  //     else if (password.isNotEmpty && password.length < 8) {
                  //       return "Password need at least 8 character";
                  //     }
                  //     return null;
                  //   },
                  //   suffixIcon: InkWell(
                  //     onTap: () {
                  //       setState(() {
                  //         _visiblePassword = !_visiblePassword;
                  //       });
                  //     },
                  //     child: Icon(
                  //       _visiblePassword
                  //           ? Icons.visibility_off
                  //           : Icons.visibility,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: TextField(
                        textInputAction: TextInputAction.continueAction,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(
                                    255, 255, 255, 255)), //<-- SEE HERE
                          ),
                          focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.white),
      ),
                          labelStyle: const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255), //<-- SEE HERE
    ),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromARGB(
                                    255, 255, 255, 255)), //<-- SEE HERE
                          ),
                          focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: Colors.yellow),
      ),
                          labelText: 'Mật khẩu',
                        ),
                      ),
                    ),
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
                    Container(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: const Text('Đăng nhập'),
                      onPressed: () {},
                    )),
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
                    Container(
                        child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 19, 27, 107),
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: const Text('Tạo tài khoản'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/createaccount');
                      },
                    )),
                  ],
                ),
              ),
              //////////
            ),
          ],
        ),
      ),
    );
  }
}
