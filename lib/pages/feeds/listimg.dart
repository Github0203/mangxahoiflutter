import 'package:flutter/material.dart';
// import 'package:mangxahoi/thuvien/galleryimage.dart';
import 'package:mangxahoi/thuvien/multi_image_layout/multi_image_layout.dart';

class listimg extends StatefulWidget {
  const listimg({super.key});

  @override
  State<listimg> createState() => _listimgState();
}

class _listimgState extends State<listimg> {
  List<String> listOfUrls = [
    "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
    "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
    "https://isha.sadhguru.org/blog/wp-content/uploads/2016/05/natures-temples.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
    "https://s23574.pcdn.co/wp-content/uploads/Singular-1140x703.jpg",
    "https://www.expatica.com/app/uploads/sites/9/2017/06/Lake-Oeschinen-1200x675.jpg",
    "https://www.expatica.com/app/uploads/sites/9/2017/06/Lake-Oeschinen-1200x675.jpg",
    "https://www.expatica.com/app/uploads/sites/9/2017/06/Lake-Oeschinen-1200x675.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        MultiImageViewer(
          images: [
            "https://picsum.photos/id/1/200/300",
            "https://picsum.photos/id/2/200/300",
            "https://picsum.photos/id/3/200/300",
            "https://picsum.photos/id/4/200/300",
            "https://picsum.photos/id/5/200/300",
            "https://picsum.photos/id/5/200/300",
          ],
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 23,
          ),
        ),
      ],
    );
  }
}
