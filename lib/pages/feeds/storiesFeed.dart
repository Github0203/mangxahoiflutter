import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/storiesEveryone.dart';

class storiesFeed extends StatelessWidget {
  const storiesFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: [
                    Column(children: <Widget>[
                      Container(
                        width: 69,
                        height: 87,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7.0),
                            topRight: Radius.circular(7.0),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1670441384415-4680ddc2017e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                          ),
                        ),
                      ),
                      Container(
                        width: 69,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7.0),
                            bottomRight: Radius.circular(7.0),
                          ),
                        ),
                        padding: const EdgeInsets.only(top: 20, bottom: 10),
                        child: const Center(child: Text('Tạo tin')),
                      ),
                    ]),
                    Positioned.fill(
                      bottom: -40.0,
                      child: Align(
                        // alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 9, 138, 212),
                            border: Border.all(color: Colors.white),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const storiesEveryone(),
      ],
    );
  }
}
