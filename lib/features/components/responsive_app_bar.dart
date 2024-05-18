import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatefulWidget implements PreferredSizeWidget {
  const ResponsiveAppBar({super.key, this.logo, required this.actions, required this.maxWidth});
  final Widget? logo;
  final List<Widget> actions;
  final double maxWidth;

  @override
  State<ResponsiveAppBar> createState() => _ResponsiveAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(76);
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: widget.maxWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            widget.logo ?? Container(),
            Row(
              children: widget.actions,
            )
          ],
        ),
      ),
    );
  }
}