import 'package:flutter/material.dart';

class listImagePost extends StatelessWidget {
  const listImagePost({super.key});

  @override
  Widget build(BuildContext context) {
    double setweidththucong = MediaQuery.of(context).size.width;
    double setHeightThuCong = MediaQuery.of(context).size.height;
    List<String> imagesn = ["https://plus.unsplash.com/premium_photo-1669276309633-6901d21a2626?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",  "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80", "https://images.unsplash.com/photo-1484406566174-9da000fda645?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=389&q=80", "https://images.unsplash.com/photo-1437622368342-7a3d73a34c8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80", "https://images.unsplash.com/photo-1555169062-013468b47731?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80","https://images.unsplash.com/photo-1555169062-013468b47731?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80","https://images.unsplash.com/photo-1555169062-013468b47731?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"];
    return Container(
      width: setweidththucong,
      height: 500,
      child: GridView(
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
  ),
  children: 
      imagesn.map((img) {
        return Container(
        width: 100, 
        height: 100,
        decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                           img),
                      ),
                    ),
      );
      }).toList(),
),
    );
  }
}