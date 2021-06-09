import 'package:dv_project/utils/utils.dart';
import 'package:flutter/material.dart';

class PropertyScreen extends StatefulWidget {
  PropertyScreen({@required this.name});
  final String name;
  @override
  _PropertyScreenState createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  String filename;
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
                widget.name,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontFamily: "Baloo",
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Utils.backgroundColor, Utils.cardBackgroundColor])),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text("Bar Graph",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/$filename/$filename" + "_bar.jpg"),
              ),
              SizedBox(height: 20),
              Text("Histogram Plot",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/$filename/$filename" + "_hist.jpg"),
              ),
              SizedBox(height: 20),
              Text("Heat Map",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/$filename/$filename" + "_heat.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    filename = Utils().fileName(widget.name);
    super.initState();
  }
}
