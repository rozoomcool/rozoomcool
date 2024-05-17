import 'package:flutter/material.dart';

import '../ui_constants.dart';

class StartBusinessCardContainer extends StatelessWidget {
  const StartBusinessCardContainer({super.key, required this.fullname, required this.profession, required this.description});
  final String fullname;
  final String profession;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints:
              const BoxConstraints(maxWidth: maxContentWidth / 1.7),
              child: RichText(
                // overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge,
                      children: [
                        const TextSpan(text: "Hi, i'm "),
                        TextSpan(
                            text: fullname,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.pink
                                // color: Theme.of(context)
                                //     .colorScheme
                                //     .primary
                                  )
                        ),
                        TextSpan(
                          text: "\n$profession",
                          style: Theme.of(context).textTheme.displayMedium?.copyWith(height: 2),
                        ),
                        TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant),
                            text:
                            "\n\n\t$description"),
                      ])),
            ),
          ],
        ),
        SizedBox(
          width: maxContentWidth / 4,
          height: maxContentWidth / 4,
          child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyan,
                      offset: Offset(7, -3),
                      blurRadius: 20,
                      spreadRadius: 0.9,
                    ),
                    BoxShadow(
                      color: Colors.deepPurple,
                      offset: Offset(12, 12),
                      blurRadius: 12,
                      spreadRadius: 0.6,
                    ),
                    BoxShadow(
                      color: Colors.pink,
                      offset: Offset(-10, -4),
                      blurRadius: 20,
                      spreadRadius: 0.1,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage("assets/profile.jpg"),
                      fit: BoxFit.cover))),
        )
      ],
    );
  }

}