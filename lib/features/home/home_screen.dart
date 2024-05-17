import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rozoomcool/constants/components/responsive_app_bar.dart';
import 'package:rozoomcool/constants/components/responsive_list_view.dart';
import 'package:rozoomcool/constants/components/start_container.dart';

import '../../constants/ui_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(
        maxWidth: maxContentWidth,
        logo: const Text("rozoomcool"),
        actions: [
          TextButton(onPressed: () {}, child: const Text("Home")),
          TextButton(onPressed: () {}, child: const Text("Projects")),
          TextButton(onPressed: () {}, child: const Text("About me")),
          TextButton(onPressed: () {}, child: const Text("Contacts")),
        ],
      ),
      body: const Center(
        child: ResponsiveListView(
          shrinkWrap: false,
          maxWidth: maxContentWidth,
          children: [
            SizedBox(
              height: 96,
            ),
            StartBusinessCardContainer(
              fullname: "Umatkereev Rosul",
              profession: "Software Developer",
              description: "Being a developer does not mean being able to write code according to instructions, but being a developer means being able to translate your ideas into a software product.",
            ),
            
          ],
        ),
      ),
    );
  }
}
