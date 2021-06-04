import 'package:flutter/material.dart';
import '../shared/styles.dart';

class NewsletterText extends StatelessWidget {
  NewsletterText.heading(this.text, {this.maxLines}) : style = headingStyle;
  NewsletterText.caption(this.text, {this.maxLines}) : style = captionStyle;
  NewsletterText.title(this.text, {this.maxLines}) : style = titleStyle;
  NewsletterText.miniTitle(this.text, {this.maxLines}) : style = miniTitleStyle;
  NewsletterText.text(this.text, {this.maxLines}) : style = textStyle;
  NewsletterText.subtext(this.text, {this.maxLines}) : style = subTextStyle;

  final String text;
  final TextStyle style;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
