import 'package:flutter/material.dart';
import 'package:project_application/configs/constants.dart';
import 'package:project_application/views/custombutton.dart';
import 'package:project_application/views/customtext.dart';
import 'package:project_application/views/customtextfield..dart';
import 'package:project_application/views/signUp.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: customtext(
          label: "SAFARI TRAVEL APP",
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: pink,
        foregroundColor: appGreen,
        automaticallyImplyLeading: true,
        actions: [
          Row(
            children: [
              customButton(
                buttonLabel: "Login",
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: appRed,
                  backgroundColor: orange,
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
            ],
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [apppBlue, appGreen],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
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
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const customtext(label: "Username"),
                customtextfield(
                  icon: Icons.person,
                  hint: "Username or Number",
                  userFieldController: userNameController,
                ),
                const customtext(label: "Password"),
                customtextfield(
                  userFieldController: passwordController,
                  icon: Icons.lock,
                  hideText: true,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                customButton(
                  buttonLabel: "Login",
                  onPressed: () {},
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    customtext(label: "Forgot Password?"),
                    SizedBox(
                      width: 10,
                    ),
                    customtext(
                      label: "Recover",
                      labelColor: appGreen,
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: appRed,
                    backgroundColor: orange,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
