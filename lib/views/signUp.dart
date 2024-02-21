import 'package:flutter/material.dart';
import 'package:project_application/configs/constants.dart';
import 'package:project_application/views/custombutton.dart';
import 'package:project_application/views/customtext.dart';
import 'package:project_application/views/customtextfield..dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController NameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController PhoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("WHERE TRAVEL MEETS MARVEL"),
        backgroundColor: pink,
        foregroundColor: appGreen,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png"),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  customtext(
                    label: "Enter your details in the fields below",
                    labelColor: appBlack,
                    fontSize: 30,
                  )
                ],
              ),
              const SizedBox(height: 10),
              const customtext(label: "Email "),
              customtextfield(
                userFieldController: EmailController,
                icon: Icons.email,
                hint: "G-mail",
              ),
              const customtext(label: "First Name "),
              customtextfield(
                userFieldController: NameController,
                icon: Icons.person,
                hint: "First Name",
              ),
              const customtext(label: "Second Name "),
              customtextfield(
                userFieldController: NameController,
                icon: Icons.person,
                hint: "second name",
              ),
              const customtext(label: "Phone Number "),
              customtextfield(
                userFieldController: PhoneController,
                icon: Icons.phone,
                hint: "phone number",
              ),
              const customtext(label: "Password"),
              customtextfield(
                userFieldController: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
                hint: "password",
              ),
              const customtext(label: " Confirm Password"),
              customtextfield(
                userFieldController: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
                hint: "confirm password",
              ),
              const SizedBox(
                height: 30,
              ),
              customButton(
                buttonLabel: "Submit",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
