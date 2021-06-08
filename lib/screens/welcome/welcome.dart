import 'package:dv_project/screens/home/home.dart';
import 'package:dv_project/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Utils.backgroundColor,
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: SizedBox(height: 20)),
              Text(
                "Welcome to Keats!",
                style: TextStyle(
                  color: Utils.primaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Baloo",
                ),
              ),
              Expanded(flex: 2, child: SizedBox(height: 30)),
              Lottie.asset("assets/welcome.json", fit: BoxFit.fill),
              Expanded(flex: 4, child: SizedBox(height: 20)),
              ElevatedButton(
                onPressed: () => Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => HomeScreen())),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                  backgroundColor:
                      MaterialStateProperty.all(Utils.primaryColor),
                ),
                child: Text(
                  "Let\'s Explore",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Expanded(flex: 2, child: SizedBox(height: 50)),
              Text(
                "Created with ❤ by",
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: "Baloo",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "Rishav Naskar",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Parijat Niyogy",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Shaivy Agrawal",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(child: SizedBox(height: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
