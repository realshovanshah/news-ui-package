import 'package:flutter/cupertino.dart';
import '../shared/styles.dart';
import 'package:flutter/material.dart';

class NewsletterNavBar extends StatelessWidget {
  final String title;

  const NewsletterNavBar({this.child, required this.title});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.12,
        minChildSize: 0.12,
        maxChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) {
          return CustomScrollView(
            shrinkWrap: true,
            controller: scrollController,
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: NavHeaderDelegate(
                  title,
                  maxExtentSize: 80,
                  minExtentSize: 80,
                ),
              ),
              SliverToBoxAdapter(
                child: SingleChildScrollView(
                  child: child ?? buildDummyColumn(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Column buildDummyColumn() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 100,
          color: Colors.red.shade100,
        ),
        Container(
          height: 100,
          color: Colors.red.shade200,
        ),
        Container(
          height: 100,
          color: Colors.red.shade300,
        ),
        Container(
          height: 100,
          color: Colors.red.shade400,
        ),
        Container(
          height: 100,
          color: Colors.red.shade500,
        ),
        Container(
          height: 100,
          color: Colors.red.shade600,
        )
      ],
    );
  }
}

class NavHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double maxExtentSize;
  final double minExtentSize;
  final String title;

  NavHeaderDelegate(this.title,
      {required this.maxExtentSize, required this.minExtentSize});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: topCircularDecoration,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ListTile(
        leading: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            color: Colors.red,
          ),
        ),
        trailing: Icon(
          CupertinoIcons.chevron_up,
        ),
      ),
    );
  }

  @override
  double get maxExtent => maxExtentSize;

  @override
  double get minExtent => minExtentSize;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
