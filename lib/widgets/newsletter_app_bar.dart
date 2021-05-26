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
          Positioned(
            bottom: -5,
            left: MediaQuery.of(context).size.width / 100,
            right: MediaQuery.of(context).size.width / 100,
            child: TitleContainer(pageTitle),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 24),
            child: HeaderContainer(),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(200);
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
      height: 150,
      decoration: bottomCircularDecoration,
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewsletterText.heading('HackerNewsLetter'),
              NewsletterText.caption('Find the news you\'ll read.')
            ],
          ),
          Spacer(),
          Icon(
            FontAwesomeIcons.hackerrank,
            color: Theme.of(context).backgroundColor,
          )
        ],
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
        height: MediaQuery.of(context).size.height * 0.09,
        child: Center(child: NewsletterText.title(pageTitle)),
      ),
    );
  }
}
