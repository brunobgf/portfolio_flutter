import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: const Size.fromHeight(150),
      child: Container(
        color: const Color.fromARGB(255, 20, 22, 24),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Text(
                'PORTFOLIO',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onHover: (val) {},
                      onTap: () {},
                      child: const Text(
                        'About me',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Projects',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Experience',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Contact',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
