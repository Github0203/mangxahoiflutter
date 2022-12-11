import 'package:flutter/material.dart';

import '../../widgets/ButtonComponentMauXanhDam.dart';

class formRegister extends StatefulWidget {
  const formRegister({super.key});

  @override
  State<formRegister> createState() => _formRegisterState();
}

class _formRegisterState extends State<formRegister> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  bool _visiblePassword = false;
  String? _email = "";
  String? _password = "";
  String? _error = "Please provide a valid email/password combination";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            const Text(
              'TẠO TÀI KHOẢN MỚI',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Bạn đã có tài khoản',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 65, 59, 59))),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Đăng nhập',
                        style: TextStyle(fontSize: 16))),
              ],
            ),

            /////////// Họ tên//// nhập Email

            //////// Nút đăng ký
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              // child: ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              // minimumSize: const Size.fromHeight(50),
              // primary: const Color.fromARGB(255, 19, 27, 107),
              //   ),
              //   child: const Text('Đăng nhập'),
              //   onPressed: () {
              // // Validate returns true if the form is valid, or false otherwise.
              // if (_formKey.currentState!.validate()) {
              //   // If the form is valid, display a snackbar. In the real world,
              //   // you'd often call a server or save the information in a database.
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text('Processing Data')),
              //   );
              // }
              //   },
              // ),
              child: ButtonComponentMauXanhDam(
                child: const Text('Đăng nhập'),
                onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Processing Data')),
                );
              }
                },
              ),
            ),
            //// nút hủy
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 92, 93, 99),
                            minimumSize: const Size.fromHeight(50),
                          ),
                          child: const Text('Hủy bỏ'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
