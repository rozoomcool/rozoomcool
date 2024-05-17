import 'package:flutter/material.dart';
import 'package:rozoomcool/utils/responsive_component.dart';

class ResponsiveListView extends StatelessWidget {
  const ResponsiveListView(
      {super.key,
      required this.children,
      required this.maxWidth,
      this.shrinkWrap = false});

  final List<ResponsiveComponent> children;
  final int maxWidth;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: shrinkWrap,
      children: children.map((element) {
        return Stack(
          fit: StackFit.loose,
          children: [
            Positioned.fill(
                child: element.background ?? const SizedBox(width: 0, height: 0,)),
            Center(
                child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth.toDouble()),
              child: SizedBox(width: double.infinity, child: element.content ?? const SizedBox(width: 0, height: 0,)),
            ))
          ],
        );
      }).toList(),
    );
  }
}
