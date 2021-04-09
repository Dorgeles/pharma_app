import 'package:flutter/material.dart';
import 'package:pharm_app/constant/theme-color.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final spaceBetweenAction = 40.0;

    return Container(
        width: screenSize.width / 1.5,
        height: screenSize.height,
        padding: EdgeInsets.only(top: 0, bottom: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          color: primary,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 26),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black26),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: CircleAvatar(
                              radius: 15,
                              // child: Image.asset("assets/dummylogo.png")
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pharma App",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: dark,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: screenSize.height / 5,
                child: Container(
                  decoration: BoxDecoration(color: white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MenuAction(
                background: Colors.yellow.shade200,
                title: "Accueil",
                icon: Icons.home_outlined,
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => BazzarScreen(),
                  //   ),
                  // );
                },
              ),
              SizedBox(
                height: spaceBetweenAction,
              ),
              MenuAction(
                background: Colors.yellow.shade200,
                title: "Pharmacie de garde",
                icon: Icons.healing_outlined,
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => BazzarScreen(),
                  //   ),
                  // );
                },
              ),
              SizedBox(
                height: spaceBetweenAction,
              ),
              MenuAction(
                title: "Effets secondaires",
                background: Colors.cyan.shade200,
                icon: Icons.biotech_outlined,
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => FavorisListScreen(),
                  //   ),
                  // );
                },
              ),
              SizedBox(
                height: spaceBetweenAction,
              ),
              MenuAction(
                background: Colors.orange.shade200,
                icon: Icons.account_circle_outlined,
                title: "Mon compte",
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => UserSettingProfilScreen(),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ));
  }
}

class MenuAction extends StatelessWidget {
  final String title;
  final IconData icon;
  final background;
  final Function press;

  const MenuAction({
    Key key,
    this.icon,
    this.title,
    this.background,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
      child: TextButton(
        onPressed: press,
        child: Row(
          children: [
            Icon(
              this.icon,
              color: Colors.black54,
              size: 40,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              this.title,
              style: TextStyle(fontSize: 18, color: dark),
            )
          ],
        ),
      ),
    );
  }
}
