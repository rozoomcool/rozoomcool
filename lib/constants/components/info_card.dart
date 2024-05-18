import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.icon, required this.title, required this.description});
  final Widget icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              icon,
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                description,
                maxLines: 3,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium,
                overflow:
                TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }

}