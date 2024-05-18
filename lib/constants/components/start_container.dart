import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';

import '../ui_constants.dart';

class StartBusinessCardContainer extends StatelessWidget {
  const StartBusinessCardContainer({super.key, required this.fullname, required this.profession, required this.description, required this.maxWidth, required this.maxHeight});
  final String fullname;
  final String profession;
  final String description;
  final double maxWidth;
  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width > maxWidth ? maxWidth : MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight - kToolbarHeight > maxHeight ? maxHeight : screenHeight - kToolbarHeight,
      child: Center(
        child: GlossyContainer(

          borderRadius: BorderRadius.circular(20),
          height: 386,
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints:
                      BoxConstraints(maxWidth: maxWidth / 1.7),
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
                  width: maxWidth / 4,
                  height: maxWidth / 4,
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
            ),
          ),
        ),
      ),
    );
  }

}