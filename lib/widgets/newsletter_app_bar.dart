import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsletter_ui/newsletter_ui.dart';
import 'package:newsletter_ui/shared/styles.dart';

class NewsletterAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;
  final BuildContext context;

  const NewsletterAppbar(
      {Key? key, required this.pageTitle, required this.context})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: HeaderContainer(),
          ),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width / 100,
            right: MediaQuery.of(context).size.width / 100,
            child: TitleContainer(pageTitle),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * 0.24);
  // Size.fromHeight(MediaQuery.of(context).size.height * 0.18);
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('hahahah ${NewsletterAppbar(
      context: context,
      pageTitle: '',
    ).preferredSize}');

    return Container(
      decoration: bottomCircularDecoration,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        // vertical: 20,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: (MediaQuery.of(context).size.height * 0.03),
        ),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewsletterText.heading('HackerNewsLetter'),
                NewsletterText.caption('Find the news you\'ll read.'),
              ],
            ),
            Spacer(),
            Icon(
              FontAwesomeIcons.hackerrank,
              color: Theme.of(context).backgroundColor,
              size: 38,
            )
          ],
        ),
      ),
    );
  }
}

class TitleContainer extends StatelessWidget {
  final String pageTitle;
  const TitleContainer(this.pageTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: fullyCircularDecoration,
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.08,
        child: Center(child: NewsletterText.title(pageTitle)),
      ),
    );
  }
}
