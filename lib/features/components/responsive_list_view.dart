import 'package:flutter/material.dart';
import 'package:rozoomcool/utils/responsive_component.dart';

class ResponsiveListView extends StatelessWidget {
  const ResponsiveListView(
      {super.key,
      required this.children,
      required this.maxWidth,
      this.shrinkWrap = false});

  final List<ResponsiveComponent> children;
  final double maxWidth;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: shrinkWrap,
      children: children.map((element) {
        return Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.loose,
          children: [
            element.background ?? const SizedBox(),
            Center(
                child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: SizedBox(width: double.infinity, child: element.content ?? const SizedBox()),
            ))
          ],
        );
      }).toList(),
    );
  }
}
