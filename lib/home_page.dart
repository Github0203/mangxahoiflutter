import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'components/onboarding/CardHorizontal.dart';
import 'components/onboarding/card-small.dart';
import 'components/onboarding/card-square.dart';

import 'package:mangxahoi/components/buttons/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, Map<String, String>> homeCards = {
    "Ice Cream": {
      "title": "Society has put up so many boundaries",
      "image":
          "https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
    },
    "Makeup": {
      "title": "Is makeup one of your daily esse …",
      "image":
          "https://images.unsplash.com/photo-1519368358672-25b03afee3bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2004&q=80"
    },
    "Coffee": {
      "title": "Many limitations on what’s right",
      "image":
          "https://raw.githubusercontent.com/creativetimofficial/public-assets/master/now-ui-pro-react-native/bg40.jpg"
    },
    "Fashion": {
      "title": "Why would anyone pick blue over?",
      "image":
          "https://images.unsplash.com/photo-1536686763189-829249e085ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=705&q=80"
    },
    "Argon": {
      "title": "Pink is obviously a better color",
      "image":
          "https://raw.githubusercontent.com/creativetimofficial/public-assets/master/now-ui-pro-react-native/project21.jpg"
    }
  };

  @override
  Widget build(BuildContext context) {
    double setpaddingthucong = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: setpaddingthucong * 0.15,
                    right: setpaddingthucong * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const icon_Logo(),
                    const homeButton(),
                  ],
                ),
              ))
            ],
            leading: Container(
              color: Colors.pink,
              width: 30,
              child: const Icon(
                Icons.menu,
              ),
            )),
        backgroundColor: Colors.white70,
        body: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: CardHorizontal(
                        cta: "View article",
                        title: homeCards["Ice Cream"]!['title']!,
                        img: homeCards["Ice Cream"]!['image']!)),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardSmall(
                        cta: "View article",
                        title: homeCards["Makeup"]!['title']!,
                        img: homeCards["Makeup"]!['image']!,
                        tap: () {}),
                    CardSmall(
                        cta: "View article",
                        title: homeCards["Coffee"]!['title']!,
                        img: homeCards["Coffee"]!['image']!,
                        tap: () {})
                  ],
                ),
                const SizedBox(height: 8.0),
                CardHorizontal(
                    cta: "View article",
                    title: homeCards["Fashion"]!['title']!,
                    img: homeCards["Fashion"]!['image']!,
                    tap: () {}),
                const SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: CardSquare(
                      cta: "View article",
                      title: homeCards["Argon"]!['title']!,
                      img: homeCards["Argon"]!['image']!,
                      tap: () {
                        Navigator.pushNamed(context, '/pro');
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
