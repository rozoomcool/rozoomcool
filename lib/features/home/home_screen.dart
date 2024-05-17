import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rozoomcool/constants/components/responsive_app_bar.dart';
import 'package:rozoomcool/constants/components/responsive_list_view.dart';
import 'package:rozoomcool/constants/components/start_container.dart';
import 'package:rozoomcool/utils/responsive_component.dart';

import '../../constants/ui_constants.dart';

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
      int maxWidth = isDesktop
          ? maxContentWidth
          : MediaQuery.of(context).size.width.toInt();

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
                  background: Container(
                    color: Colors.red
                  ),
                  content: StartBusinessCardContainer(
                    maxHeight: 1000,
                    maxWidth: maxWidth,
                    fullname: "Umatkereev Rosul",
                    profession: "Software Developer",
                    description:
                        "Being a developer does not mean being able to write code according to instructions, but being a developer means being able to translate your ideas into a software product.",
                  )),
            ],
          ),
        ),
      );
    });
  }
}
