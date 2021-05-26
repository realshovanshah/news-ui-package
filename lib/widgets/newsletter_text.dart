import 'package:flutter/material.dart';
import '../shared/styles.dart';

class NewsletterText extends StatelessWidget {
  NewsletterText.heading(this.text) : style = headingStyle;
  NewsletterText.caption(this.text) : style = captionStyle;
  NewsletterText.title(this.text) : style = titleStyle;
  NewsletterText.text(this.text) : style = textStyle;
  NewsletterText.subtext(this.text) : style = subTextStyle;

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
