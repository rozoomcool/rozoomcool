import 'package:flutter/material.dart';

class ResponsiveListView extends StatelessWidget {
  const ResponsiveListView(
      {super.key,
      required this.children,
      required this.maxWidth,
      this.shrinkWrap = false});

  final List<Widget> children;
  final int maxWidth;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: shrinkWrap,
      children: children
          .map((element) => Center(
                  child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: maxWidth.toDouble()),
                child: SizedBox(width: double.infinity, child: element),
              )))
          .toList(),
    );
  }
}
