import 'package:dv_project/screens/home/charts/overall.dart';
import 'package:dv_project/screens/home/charts/property.dart';
import 'package:dv_project/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.backgroundColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Utils.backgroundColor, Utils.cardBackgroundColor])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Utils.primaryColor,
                    iconSize: 16,
                    onPressed: () => Navigator.pop(context)),
              ),
              Text(
                "Properties used for analysis",
                style: TextStyle(
                  fontFamily: "Baloo",
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              PropertyCard(name: Utils.overall, index: i++),
              SizedBox(height: 20),
              PropertyCard(name: Utils.app, index: i++),
              SizedBox(height: 20),
              PropertyCard(name: Utils.classs, index: i++),
              SizedBox(height: 20),
              PropertyCard(name: Utils.genus, index: i++),
              SizedBox(height: 20),
              PropertyCard(name: Utils.importer, index: i++),
              SizedBox(height: 20),
              PropertyCard(name: Utils.term, index: i++),
              SizedBox(height: 20),
              PropertyCard(name: Utils.origin, index: i++),
              SizedBox(height: 20),
              PropertyCard(name: Utils.purpose, index: i++),
              SizedBox(height: 20),
              PropertyCard(name: Utils.source, index: i++),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class PropertyCard extends StatelessWidget {
  PropertyCard({@required this.name, @required this.index});
  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Utils.cardBackgroundColor,
        ),
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(horizontal: 30),
          leading:
              Text("Property $index", style: TextStyle(color: Colors.white)),
          trailing: Text(name, style: TextStyle(color: Colors.white)),
          onTap: () {
            if (name == Utils.overall)
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => OverallScreen()));
            if (name == Utils.app)
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => PropertyScreen(name: Utils.app)));
            if (name == Utils.classs)
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          PropertyScreen(name: Utils.classs)));
            if (name == Utils.genus)
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => PropertyScreen(name: Utils.genus)));
            if (name == Utils.importer)
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          PropertyScreen(name: Utils.importer)));

            if (name == Utils.term)
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => PropertyScreen(name: Utils.term)));
            if (name == Utils.origin)
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          PropertyScreen(name: Utils.origin)));
            if (name == Utils.purpose)
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          PropertyScreen(name: Utils.purpose)));
            if (name == Utils.source)
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          PropertyScreen(name: Utils.source)));
          },
          enabled: true,
          selectedTileColor: Utils.primaryColor,
        ),
      ),
    );
  }
}
