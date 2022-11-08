import 'package:flutter/material.dart';

class AboutMeCard extends StatelessWidget {
  const AboutMeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: 1000,
        height: 500,
        padding: const EdgeInsets.all(50),
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: Color.fromARGB(255, 5, 5, 5),
              width: 1,
            ),
          ),
          color: Color.fromARGB(255, 227, 222, 237),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album, size: 200),
                title: Text(
                  'Bruno Gomes Ferreira',
                  style: TextStyle(fontSize: 30.0),
                ),
                subtitle: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonBar(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Social1'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Social2'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Social3'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
