import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/formated_text.dart';

class AboutMeCard extends StatelessWidget {
  const AboutMeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: (screenSize.width < 600) ? 600 : 1100,
        height: (screenSize.width < 800) ? 800 : 480,
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
          color: Color.fromARGB(255, 232, 230, 236),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return const _CardContentMobile();
              } else {
                return const _CardContent();
              }
            },
          ),
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              _Avatar(),
              Expanded(
                child: _AboutMeText(),
              ),
            ],
          ),
          const _SocialMedia(),
        ],
      ),
    );
  }
}

class _AboutMeText extends StatelessWidget {
  const _AboutMeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Padding(
        padding: EdgeInsets.only(
          bottom: 10.0,
        ),
        child: Text(
          'Bruno Gomes Ferreira',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      subtitle: FormatedText(
        textFormat:
            'Welcome to my portfolio! I am a Software Engineering student at PUC-Minas and Digital Artist as a hobby. Currently working as Software Developer Intern and also learning about Flutter at Framework Digital! :) ',
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage('images/avatar.png'), fit: BoxFit.fill),
      ),
    );
  }
}

class _CardContentMobile extends StatelessWidget {
  const _CardContentMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const _Avatar(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Expanded(
                child: _AboutMeText(),
              ),
            ],
          ),
          const _SocialMedia(),
        ],
      ),
    );
  }
}

class _SocialMedia extends StatelessWidget {
  const _SocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(right: 135.0),
          child: Text(
            'Social Media',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
                ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 20,
                  ),
                  label: const Text('LinkedIn'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: const Color.fromARGB(248, 55, 4, 97),
                  ),
                ),
                ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    size: 20,
                  ),
                  label: const Text('GitHub'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: const Color.fromARGB(248, 55, 4, 97),
                  ),
                ),
                ElevatedButton.icon(
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 20,
                  ),
                  label: const Text('Instagram'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: const Color.fromARGB(248, 55, 4, 97),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
