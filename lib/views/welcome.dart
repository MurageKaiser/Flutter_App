import 'package:flutter/material.dart';
import 'package:project_application/configs/constants.dart';
import 'package:project_application/views/customtext.dart';
import 'package:project_application/views/dashboard.dart';
import 'package:project_application/views/login.dart';
import 'package:project_application/views/signUp.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: apppBlue,
      appBar: AppBar(
        centerTitle: true,
        title: const customtext(
          label: "SAFARI TRAVEL APP WELCOME PAGE",
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: pink,
        foregroundColor: appGreen,
        automaticallyImplyLeading: true,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: orange,
              onPrimary: appRed,
              elevation: 10,
            ),
            child: const Text("Login"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: orange,
              onPrimary: appRed,
              elevation: 10,
            ),
            child: const Text("Sign Up"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()),
              );
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: orange,
              onPrimary: appRed,
              elevation: 10,
            ),
            child: const Text("Dashboard"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [apppBlue, appGreen],
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/elephant.jpeg"),
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/images/beach.jpeg"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/activities.jpeg"),
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/images/welcome.jpeg")
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customtext(
                      label: "WHERE TRAVEL MEETS MARVEL, WELCOME",
                      labelColor: appRed,
                      fontSize: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
