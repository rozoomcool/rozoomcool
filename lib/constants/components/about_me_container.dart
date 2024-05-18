import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:rozoomcool/constants/components/info_card.dart';

import '../text_constants.dart';

class AboutMeContainer extends StatelessWidget {
  const AboutMeContainer({super.key, required this.maxWidth});

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
            "About me",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Center(
            child: Container(
              width: 100,
              height: 6,
              color: Colors.pink,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth.toDouble()),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.titleLarge,
                        children: [
                      TextSpan(
                          text: "1+",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w900, fontSize: 96)),
                      const TextSpan(text: "\nYears\nWorking\nExpirience  "),
                    ])),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: maxWidth / 1.3),
                          child: RichText(
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  children: [
                                TextSpan(
                                    text: aboutMe,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSurface)),
                                const TextSpan(text: "\n\nrosul.um@gmail.com")
                              ])),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoCard(
                            icon: Icon(
                              Iconsax.code,
                              size: 46,
                            ),
                            title: "Backend",
                            description: aboutBackend),
                        InfoCard(
                            icon: Icon(
                              Iconsax.headphone,
                              size: 46,
                            ),
                            title: "Mobile",
                            description: aboutBackend),
                        InfoCard(
                            icon: Icon(
                              Iconsax.scan_barcode,
                              size: 46,
                            ),
                            title: "WEB",
                            description: aboutBackend)
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
