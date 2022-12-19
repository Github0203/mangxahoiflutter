import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

import '../../data/example_data.dart' as example;
import '../../models/comment.dart';
import '../comments.dart';
import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

class ItemEmojiN extends StatefulWidget {
  const ItemEmojiN({
    Key? key,
    this.title,
    this.imgPath,
    required this.reactions,
  }) : super(key: key);

  final String? title;
  final String? imgPath;
  final List<Reaction<String>> reactions;

  @override
  State<ItemEmojiN> createState() => _ItemState();
}

class _ItemState extends State<ItemEmojiN> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  final List<Comment> _comments = [];

  void _showBottomSheetShare(BuildContext context) {
    showAdaptiveActionSheet(
 context: context,
 title: const Text('Chia sẽ'),
 androidBorderRadius: 30,
 actions: <BottomSheetAction>[
    BottomSheetAction(title: const Text('Item 1'), onPressed: (context) {}),
    BottomSheetAction(title: const Text('Item 2'), onPressed: (context) {}),
    BottomSheetAction(title: const Text('Item 3'), onPressed: (context) {}),
 ],
 cancelAction: CancelAction(title: const Text('Đóng')),// onPressed parameter is optional by default will dismiss the ActionSheet
);
  }

    void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height  * 0.4,
            child: const Center(
              child: Text("Welcome to AndroidVille!"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            // width: MediaQuery.of(context).size.width * 0.2,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: ReactionButtonToggle<String>(
                onReactionChanged: (String? value, bool isChecked) {
                  debugPrint('Chọn giá trị: $value, được chọn là: $isChecked');
                },
                reactions: widget.reactions,
                initialReaction: example.defaultInitialReaction,
                selectedReaction: widget.reactions[1],
              ),
            ),
          ),
          InkWell(
            onTap: () => displayBottomSheet(context),
            child: Row(
              children: [
                Icon(
                  Icons.message,
                  size: 20,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 5),
                Text(
                  'Bình luận',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            // onTap: () {
            //   ScaffoldMessenger.of(context).showSnackBar(
            //     SnackBar(
            //       duration: const Duration(seconds: 2),
            //       content: Text(
            //         'Chia sẽ hình ảnh ${widget.title}',
            //         style: const TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   );
            // },
            onTap: () => _showBottomSheetShare(context),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.share,
                  size: 20,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 5),
                Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
