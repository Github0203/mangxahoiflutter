import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangxahoi/home_page.dart';

class homeButton extends StatelessWidget {
  const homeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage())),
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
      ),
      child: const Text(
        'Home',
        style: TextStyle(color: Colors.yellow),
      ),
    );
  }
}

class buttonCancel extends StatelessWidget {
  const buttonCancel({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 92, 93, 99),
        minimumSize: const Size.fromHeight(50),
      ),
      child: const Text('Hủy bỏ'),
      onPressed: () {
        // Navigator.pop(context);
      },
    );
  }
}
