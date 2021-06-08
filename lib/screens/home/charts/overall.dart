import 'package:dv_project/utils/utils.dart';
import 'package:flutter/material.dart';

class OverallScreen extends StatefulWidget {
  @override
  _OverallScreenState createState() => _OverallScreenState();
}

class _OverallScreenState extends State<OverallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.backgroundColor,
      appBar: AppBar(
        backgroundColor: Utils.backgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white70,
          iconSize: 16,
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Overall Piecharts",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontFamily: "Baloo",
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Utils.backgroundColor, Utils.cardBackgroundColor])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text("Genus",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/piecharts/pie1.jpg"),
              ),
              SizedBox(height: 20),
              Text("Class",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/piecharts/pie2.jpg"),
              ),
              SizedBox(height: 20),
              Text("Family",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/piecharts/pie3.jpg"),
              ),
              SizedBox(height: 20),
              Text("Term",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/piecharts/pie4.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
