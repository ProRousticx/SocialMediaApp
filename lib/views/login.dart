import 'package:flutter/material.dart';
import 'package:myprofile/constants/my_styles.dart';
import 'package:myprofile/views/signup.dart';
import 'package:page_transition/page_transition.dart';

import '../constants/my_valiators.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late Size size;
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.all(10),
              color: Colors.blue.shade900,
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    PageTransition(
                        child: const SignUp(),
                        type: PageTransitionType.scale,
                        duration: const Duration(milliseconds: 600),
                        reverseDuration: const Duration(milliseconds: 600),
                        alignment: Alignment.bottomRight)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(Icons.arrow_back_ios),
                    Text(
                      "SIGNUP",
                      style: MyStyles.design.bodyText(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(300))),
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        "Welcome!",
                        style: MyStyles.design.titleText(fontColor: Theme.of(context).primaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        controller: emailController,
                        validator: emailValidator,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email Address",
                          prefixIcon: const Icon(Icons.mail),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        controller: passwordController,
                        validator: passwordValidator,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        // if (!formKey.currentState!.validate()) {
                        //   return;
                        // }
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                                child: const Home(), type: PageTransitionType.bottomToTop),
                            (route) => false);
                      },
                      icon: Text(
                        "LOGIN",
                        style: MyStyles.design
                            .buttonText(fontColor: Theme.of(context).primaryColor, fontSize: 20),
                      ),
                      label: const Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
