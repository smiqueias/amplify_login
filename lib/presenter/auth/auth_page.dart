import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  @override
  void initState() {
    _checkAuth().then((userHasLogged) {
      userHasLogged ? Navigator.pushReplacementNamed(context, '/home') :
      Navigator.pushReplacementNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<bool> _checkAuth() async {
    try {
      final result = await Amplify.Auth.fetchAuthSession();
      return result.isSignedIn;
    } catch (e,s) {
      print(e);
      print(s);
      return false;
    }
  }
}
