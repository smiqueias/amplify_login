import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

import '../../amplifyconfiguration.dart';
import '../../models/ModelProvider.dart';

class SplashPage extends StatefulWidget {

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  //final _isAmplifyConfigured = ValueNotifier<bool>(false);


  @override
  void initState() {
    _configureAmplify().then((isConfigured) {
      isConfigured ? Navigator.pushReplacementNamed(context, '/auth') : null;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }

  Future<bool> _configureAmplify() async {
    try {
      await Amplify.addPlugins([
        AmplifyAuthCognito(),
        AmplifyDataStore(modelProvider: ModelProvider.instance),
        AmplifyAPI()
      ]);
      await Amplify.configure(amplifyconfig);
      return true;
      //_isAmplifyConfigured.value = true;
    } catch (e, st) {
      print("Erro ao configurar Amplify: $e");
      print("Stacktrace: $st");
      return false;
    }
  }
}
