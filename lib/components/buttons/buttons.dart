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

const List<String> list = <String>['Nam', 'Nữ', 'Khác'];

class SexGioitinh extends StatefulWidget {
  const SexGioitinh({super.key});

  @override
  State<SexGioitinh> createState() => _SexGioitinhState();
}

class _SexGioitinhState extends State<SexGioitinh> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      focusColor: Colors.white,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
    ;
  }
}
