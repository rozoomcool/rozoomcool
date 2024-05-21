import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rozoomcool/utils/responsive_component.dart';

import '../../constants/ui_constants.dart';
import '../components/about_me_container.dart';
import '../components/metaballs_background.dart';
import '../components/responsive_app_bar.dart';
import '../components/responsive_list_view.dart';
import '../components/start_container.dart';
import '../components/technologies_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isDesktop = false;
      if (constraints.maxWidth >= maxContentWidth) isDesktop = true;
      double maxWidth =
          isDesktop ? maxContentWidth : MediaQuery.of(context).size.width;
      double screenHeight = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width > maxWidth ? maxWidth : MediaQuery.of(context).size.width;
      double maxHeight = 1080;

      return Scaffold(
        appBar: ResponsiveAppBar(
          maxWidth: maxWidth,
          logo: Text("rozoomcool ${constraints.maxWidth}"),
          actions: [
            TextButton(onPressed: () {}, child: const Text("Home")),
            TextButton(onPressed: () {}, child: const Text("Projects")),
            TextButton(onPressed: () {}, child: const Text("About me")),
            TextButton(onPressed: () {}, child: const Text("Contacts")),
          ],
        ),
        body: Center(
          child: ResponsiveListView(
            shrinkWrap: false,
            maxWidth: maxContentWidth,
            children: [
              ResponsiveComponent(
                  background: SizedBox(
                        height: (screenHeight - kToolbarHeight) > maxHeight ? maxHeight : (screenHeight - kToolbarHeight),
                      child: const MetaballsBackground()),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: StartBusinessCardContainer(
                      maxHeight: 1000,
                      maxWidth: maxWidth,
                      fullname: "Umatkereev Rosul",
                      profession: "Software Developer",
                      description:
                          "Being a developer does not mean being able to write code according to instructions, but being a developer means being able to translate your ideas into a software product.",
                    ),
                  )),
              ResponsiveComponent(
                  background: const ColoredBox(
                    color: Colors.black38,
                  ),
                  content: AboutMeContainer(
                    maxWidth: maxWidth,
                  )),
              ResponsiveComponent(
                  content: TechnologiesContainer(maxWidth: maxWidth,)
              ),
              ResponsiveComponent(
                  content: const SizedBox(
                height: 150,
              )),
            ],
          ),
        ),
      );
    });
  }
}
