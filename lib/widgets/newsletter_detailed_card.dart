import 'package:flutter/material.dart';
import 'package:newsletter_ui/newsletter_ui.dart';
import 'package:newsletter_ui/shared/styles.dart';

class NewsletterDetailedCard extends StatelessWidget {
  const NewsletterDetailedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: fullyCircularDecoration,
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NewsletterText.text(
            'This is a question/tite. aflk al jflaj lkaj l',
            maxLines: 5,
          ),
          SizedBox(height: 5),
          NewsletterText.caption('anon • 1 day ago'),
          Container(
            margin: EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 8),
            width: double.infinity,
            height: 150,
            child: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
            ),
            color: Colors.blueGrey,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            child: Center(child: NewsletterText.text("flutter.com")),
          ),
          Container(
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
                child: NewsletterText.caption('121'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
