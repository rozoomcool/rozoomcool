import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/text_constants.dart';

class TechnologiesContainer extends StatelessWidget {
  const TechnologiesContainer({super.key, required this.maxWidth});

  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Technologies",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Container(
              width: 100,
              height: 6,
              color: Colors.pink,
            ),
          ),
          const SizedBox(
            height: 56,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth.toDouble()),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...techLogoLinks.map<Widget>((el) => Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(200)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.network(
                          el,
                          width: 54,
                          height: 54,
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
