import 'package:flutter/material.dart';
import 'package:pharm_app/constant/custom-drawer.component.dart';
import 'package:pharm_app/constant/custom-textfield.component.dart';
import 'package:pharm_app/constant/theme-color.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.reorder_outlined),
          color: Colors.black87,
          onPressed: () {
            if (_scaffoldKey.currentState.isDrawerOpen) {
              _scaffoldKey.currentState.openEndDrawer();
            } else {
              _scaffoldKey.currentState.openDrawer();
            }
          },
        ),
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(width: 40),
            Icon(
              Icons.location_on,
              color: primary,
            ),
            Text(
              "cocody angré Star 9B",
              style: normalText,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: "Faites vos recherche de produit",
            ),
          ],
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
