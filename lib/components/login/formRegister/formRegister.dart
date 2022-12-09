import 'package:flutter/material.dart';

class formRegister extends StatelessWidget {
  const formRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
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
                const Text(
                  'Bạn đã có tài khoản',
                  style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 65, 59, 59))
                  ),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text('Đăng nhập',
                  style: TextStyle(fontSize: 16)
                  )),
                  
              ],
            )
        ],
      ),
    );
  }
}