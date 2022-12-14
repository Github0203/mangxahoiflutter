import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';

class storiesEveryone extends StatelessWidget {
  const storiesEveryone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 69.0,
      height: 133.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 126,
            height: 142,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7.0),
                topRight: Radius.circular(7.0),
                bottomLeft: Radius.circular(7.0),
                bottomRight: Radius.circular(7.0),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1670441384415-4680ddc2017e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  topRight: Radius.circular(7.0),
                  bottomLeft: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                ),
              ),
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 15, 192, 83),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.0),
                    topRight: Radius.circular(7.0),
                    bottomLeft: Radius.circular(7.0),
                    bottomRight: Radius.circular(7.0),
                  ),
                ),
                // child: Text('My Awesome Border'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
