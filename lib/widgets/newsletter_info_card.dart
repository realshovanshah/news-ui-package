import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsletter_ui/newsletter_ui.dart';
import 'package:newsletter_ui/shared/styles.dart';

class NewsletterInfoCard extends StatelessWidget {
  const NewsletterInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: fullyCircularDecoration,
      width: MediaQuery.of(context).size.width * 0.8,
      // height: MediaQuery.of(context).size.height * 0.16,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    child: NewsletterText.miniTitle(
                        'This is a question/title ajahahahah')),
                Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: NewsletterText.subtext('by ShahJr'),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Icon(
                        CupertinoIcons.greaterthan,
                        size: 14,
                      ),
                    ),
                    NewsletterText.caption('121'),
                    SizedBox(width: 10),
                    Icon(
                      FontAwesomeIcons.comment,
                      size: 14,
                    ),
                    SizedBox(width: 2),
                    NewsletterText.caption('4')
                  ],
                )
                // NewsletterText.text('text')
              ],
            ),
          ),
          SizedBox(height: 100, width: 60, child: FlutterLogo())
        ],
      ),
    );
  }
}
