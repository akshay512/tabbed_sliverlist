import 'package:flutter/material.dart';

class TabListBuilder extends StatelessWidget {
  const TabListBuilder(
      {Key? key,
      this.tabListPadding = const EdgeInsets.all(0),
      this.tabListDecoration = const BoxDecoration(),
      this.physics = const ScrollPhysics(),
      required this.uniquePageKey,
      required this.length,
      required this.builder,
      this.widgetBelowListView = const SizedBox()})
      : super(key: key);
  final EdgeInsetsGeometry tabListPadding;
  final Decoration tabListDecoration;
  final ScrollPhysics physics;
  final String uniquePageKey;
  final int length;
  final Widget Function(BuildContext context, int index) builder;
  final Widget widgetBelowListView;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: tabListDecoration,
      padding: tabListPadding,
      child: CustomScrollView(
        physics: physics,
        key: PageStorageKey<String>(uniquePageKey),
        slivers: [
          SliverOverlapInjector(
            // This is the flip side of the SliverOverlapAbsorber above.
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(builder, childCount: length)),
          SliverToBoxAdapter(child: widgetBelowListView)
        ],
      ),
    );
  }
}
