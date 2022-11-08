import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size.fromHeight(150),
      child: Container(
        color: Colors.blueGrey,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                'HOME',
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
                      child: Text(
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
                      child: Text(
                        'Projects',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Experience',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
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
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(150);
}
