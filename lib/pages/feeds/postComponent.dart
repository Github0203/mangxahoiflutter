import 'package:flutter/material.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:mangxahoi/components/widgets/TextWidgetComponent.dart';
import 'package:mangxahoi/pages/feeds/listImagePost.dart';
import 'package:readmore/readmore.dart';

class postComponent extends StatelessWidget {
  const postComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.fromLTRB(0,10,0,0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                    Stack(
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1670441384415-4680ddc2017e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'))),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(color: Colors.green, spreadRadius: 3),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 3, 0, 3),
                    child: CustomerTextN.textButton16Medium('Aphrodite Nguyen'),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10 , 0, 5, 0),
                        child: CustomerTextN.textButton13Normal('1 ngày'),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: icon_congkhai(),
                      ),
                    ],
                  ),
                ],
              ),
                ],
              ),
            ],
          ),
          const icon_bacham(),
            ],
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          child: Column(
            children: const <Widget>[
              ReadMoreText(
  'Nay đi chợ Kim Biên mua hàng, có ai gửi mua Hoá Chất hay Axit gì ko 😄😄 Truyện cổ tích 😜 Ngày xửa ngày xưa thời vua hùng vương thứ 18, sau khi hỏi cưới Mỵ Nương không được, Thuỷ Tinh tức tối quậy tưng bừng, dâng lũ lụt khắp nơi rồi tuyên bố: Tao cấm tụi bây xuống biển, gặp đâu chém đó!............ Nay đi chợ Kim Biên mua hàng, có ai gửi mua Hoá Chất hay Axit gì ko 😄😄 Truyện cổ tích 😜 Ngày xửa ngày xưa thời vua hùng vương thứ 18, sau khi hỏi cưới Mỵ Nương không được, Thuỷ Tinh tức tối quậy tưng bừng, dâng lũ lụt khắp nơi rồi tuyên bố: Tao cấm tụi bây xuống biển, gặp đâu chém đó!............',
  trimLines: 5,
  colorClickableText: Colors.pink,
  trimMode: TrimMode.Line,
  trimCollapsedText: 'Xem thêm',
  trimExpandedText: 'Ẩn bớt',
  moreStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
),
            ],
          ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: listImagePost(),
          )
        ],
      ),
    );
  }
}
