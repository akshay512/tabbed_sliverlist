import 'package:flutter/material.dart';
import 'sliver_tabbar.dart';
import 'tablist_builder.dart';

class TabbedList extends StatefulWidget {
  const TabbedList({
    Key? key,
    required this.tabLength,
    required this.sliverTabBar,
    // required this.tabBar,
    required this.tabLists,
    this.tabPhysics = const ScrollPhysics(),
  }) : super(key: key);

  final int tabLength;
  final SliverTabBar sliverTabBar;
  // final TabBar tabBar;
  final List<TabListBuilder> tabLists;
  final ScrollPhysics tabPhysics;

  @override
  State<TabbedList> createState() => _TabbedListState();
}

class _TabbedListState extends State<TabbedList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.tabLength,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool isInnerBoxScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: widget.sliverTabBar,
                ),
              ];
            },
            body: TabBarView(
              children: widget.tabLists,
            )));
  }
}
