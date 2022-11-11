import 'package:flutter/material.dart';
import 'package:portfolio_flutter/src/widgets/footer.dart';
import '../widgets/aboutme_web_card.dart';
import '../widgets/navbar.dart';
import '../widgets/projectscard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            AboutMeCard(),
            ProjectsCard(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
