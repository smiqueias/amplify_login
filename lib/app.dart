import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_login/amplifyconfiguration.dart';
import 'package:amplify_login/models/ModelProvider.dart';
import 'package:amplify_login/presenter/auth/auth_page.dart';
import 'package:amplify_login/presenter/home/home_page.dart';
import 'package:amplify_login/presenter/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'amplify_configured.dart';
import 'presenter/login/login_page.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        initialRoute: "/splash",
        routes: {
          '/splash': (context) => const SplashPage(),
          '/login': (context) => const LoginPage(),
          '/home': (context) => HomePage(),
          '/auth': (context) => const AuthPage(),
        },
      );
  }
}
