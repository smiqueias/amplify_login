import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_login/models/User.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {

  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userName = "";

  @override
  void initState() {
    getUser().then((username) {
      userName = username;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Olá, $userName!'),
      ),
    );
  }

  Future<String> getUser() async {
    var res = await Amplify.Auth.getCurrentUser();
    var userDetails = await Amplify.DataStore.query( User.classType,
    where: User.ID.eq(res.userId)
    );
    return res.username;
  }
}
