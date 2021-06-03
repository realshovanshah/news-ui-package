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
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: fullyCircularDecoration,
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.16,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 1),
                  height: 28,
                  child: NewsletterText.title('This is a question/title')),
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
          Spacer(),
          SizedBox(height: 100, width: 60, child: FlutterLogo())
        ],
      ),
    );
  }
}
