import 'package:flutter/material.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: (screenSize.width < 900) ? 600 : 1100,
        height: (screenSize.width < 1100) ? 1200 : 500,
        padding: const EdgeInsets.all(65),
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(
              color: Color.fromARGB(255, 5, 5, 5),
              width: 1,
            ),
          ),
          color: const Color.fromARGB(255, 232, 230, 236),
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < 900) {
              return const _CardContentMobile();
            } else {
              return const _CardContent();
            }
          }),
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const _Title(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _ProjectsCard(
              projectName: 'Overseer',
              imagePath: 'images/overseer.png',
            ),
            _ProjectsCard(
              projectName: 'NLW-Esports',
              imagePath: 'images/nlwesports.png',
            ),
            _ProjectsCard(
              projectName: 'Deskmode',
              imagePath: 'images/deskmode.png',
            ),
            _ProjectsCard(
              projectName: 'Love2Help',
              imagePath: 'images/love2help.jpg',
            ),
          ],
        ),
      ],
    );
  }
}

class _CardContentMobile extends StatelessWidget {
  const _CardContentMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: _Title(),
        ),
        Wrap(
          direction: Axis.vertical,
          children: [
            _ProjectsCard(
              projectName: 'Overseer',
              imagePath: 'images/overseer.png',
            ),
            _ProjectsCard(
              projectName: 'NLW-Esports',
              imagePath: 'images/nlwesports.png',
            ),
            _ProjectsCard(
              projectName: 'Deskmode',
              imagePath: 'images/deskmode.png',
            ),
            _ProjectsCard(
              projectName: 'Love2Help',
              imagePath: 'images/love2help.jpg',
            ),
          ],
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Projects',
      style: TextStyle(
        fontSize: 30.0,
      ),
    );
  }
}

class _ProjectsCard extends StatelessWidget {
  final String projectName;
  final String imagePath;

  const _ProjectsCard({
    Key? key,
    required this.projectName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(10),
                    child: Card(
                        elevation: 10,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 5, 5, 5),
                            width: 1,
                          ),
                        ),
                        color: const Color.fromARGB(255, 70, 18, 174),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(24),
                            ),
                            image: DecorationImage(
                              image: AssetImage(imagePath),
                              fit: BoxFit.contain,
                            ),
                          ),
                        )),
                  ),
                  Text(projectName),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
