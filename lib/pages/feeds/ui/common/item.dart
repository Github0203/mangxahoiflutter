import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

import '../../data/example_data.dart' as example;
import '../../models/comment.dart';
import '../comments.dart';

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

  void _showBottomSheetComments() {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Comments(comments: _comments);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.2,
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
          onTap: () => _showBottomSheetComments(),
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
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 2),
                content: Text(
                  'Chia sẽ hình ảnh ${widget.title}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
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
    );
  }
}
