import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliverTabBar extends StatelessWidget {
  const SliverTabBar(
      {Key? key,
      this.leading,
      this.title,
      this.actions,
      this.flexibleSpace,
      required this.tabBar,
      this.elevation,
      this.shadowColor,
      this.backgroundColor,
      this.foregroundColor,
      this.iconTheme,
      this.actionsIconTheme,
      this.centerTitle,
      this.titleSpacing,
      this.collapsedHeight,
      this.expandedHeight,
      this.onStretchTrigger,
      this.shape,
      this.leadingWidth,
      this.toolbarTextStyle,
      this.titleTextStyle,
      this.systemOverlayStyle})
      : super(key: key);

  final Widget? leading;
  final bool automaticallyImplyLeading = true;
  final Widget? title;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final TabBar? tabBar;
  final double? elevation;
  final Color? shadowColor;
  final bool forceElevated = false;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final IconThemeData? iconTheme;
  final IconThemeData? actionsIconTheme;
  final bool primary = true;
  final bool? centerTitle;
  final bool excludeHeaderSemantics = false;
  final double? titleSpacing;
  final double? collapsedHeight;
  final double? expandedHeight;
  final bool floating = true;
  final bool pinned = true;
  final bool snap = true;
  final bool stretch = false;
  final double stretchTriggerOffset = 100.0;
  final Future<void> Function()? onStretchTrigger;
  final ShapeBorder? shape;
  final double toolbarHeight = kToolbarHeight;
  final double? leadingWidth;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      key: key,
      actions: actions,
      actionsIconTheme: actionsIconTheme,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      bottom: tabBar,
      centerTitle: centerTitle,
      collapsedHeight: collapsedHeight,
      elevation: elevation,
      excludeHeaderSemantics: excludeHeaderSemantics,
      expandedHeight: expandedHeight,
      flexibleSpace: flexibleSpace,
      floating: floating,
      forceElevated: forceElevated,
      foregroundColor: foregroundColor,
      iconTheme: iconTheme,
      leading: leading,
      leadingWidth: leadingWidth,
      onStretchTrigger: onStretchTrigger,
      pinned: pinned,
      primary: primary,
      shadowColor: shadowColor,
      shape: shape,
      snap: snap,
      stretch: stretch,
      stretchTriggerOffset: stretchTriggerOffset,
      systemOverlayStyle: systemOverlayStyle,
      title: title,
      titleSpacing: titleSpacing,
      titleTextStyle: titleTextStyle,
      toolbarHeight: toolbarHeight,
      toolbarTextStyle: toolbarTextStyle,
    );
  }
}
