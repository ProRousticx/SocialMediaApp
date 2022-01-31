import 'package:flutter/material.dart';
import 'package:myprofile/views/login.dart';
import 'package:myprofile/views/signup.dart';
import 'package:myprofile/views/splash.dart';

import 'constants/my_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile",
      initialRoute: "/",
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.light,
          primaryColor: Colors.blue,
          iconTheme: const IconThemeData(color: Colors.white, size: 30),
          appBarTheme:
              const AppBarTheme(backgroundColor: kBottomNavigationSelectedColor, elevation: 2)),
      routes: {
        "/": (context) => const Splash(),
        "/login": (context) => const Login(),
        "/signup": (context) => const SignUp(),
      },
    );
  }
}
