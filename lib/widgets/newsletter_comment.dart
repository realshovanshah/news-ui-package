import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsletter_ui/newsletter_ui.dart';
import 'package:newsletter_ui/shared/styles.dart';

class NewsletterComment extends StatefulWidget {
  NewsletterComment({Key? key}) : super(key: key);

  @override
  _NewsletterCommentState createState() => _NewsletterCommentState();
}

class _NewsletterCommentState extends State<NewsletterComment> {
  var _longPressed = false;
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(key.currentContext!).size.height);
    return GestureDetector(
      // onTapCancel: () => _longPressed = false,
      onTap: () {
        setState(() => _longPressed = !_longPressed);
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        height: _longPressed ? MediaQuery.of(context).size.height * 0.12 : null,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: fullyCircularDecoration,
        child: ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(left: index * 12),
              child: Comment(
                longPressed: _longPressed,
              ),
            );
          },
        ),
      ),
    );
  }
}

class Comment extends StatefulWidget {
  Comment({
    Key? key,
    required this.longPressed,
  }) : super(key: key);

  bool longPressed;

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  // void getHeight() {
  //   print('called');
  //   final keyContext = (widget.key as GlobalKey).currentContext;
  //   if (keyContext != null) {
  //     final txtBox = keyContext.findRenderObject() as RenderBox;
  //     print('height ${txtBox.size.height} and width ${txtBox.size.width}');
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 1.5,
              height: double.infinity,
              color: Colors.black,
              margin: const EdgeInsets.only(right: 4, top: 3, bottom: 3),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsletterText.subtext('Shah Jr. 1 day ago'),
                  Flexible(
                    child: NewsletterText.caption(
                      'texttext text text text text text text text text',
                      maxLines: 10,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
