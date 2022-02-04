import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_login/amplifyconfiguration.dart';
import 'package:amplify_login/models/ModelProvider.dart';
import 'package:flutter/material.dart';

import 'amplify_configured.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _isAmplifyConfigured = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isAmplifyConfigured,
      builder: (context, bool isAmplifyConfigured, _) => MaterialApp(
        title: "Flutter Demo",
        home: isAmplifyConfigured
            ? const AmplifyConfigured()
            : const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
      ),
    );
  }

  Future<void> _configureAmplify() async {
    try {
      await Amplify.addPlugins([
        AmplifyAuthCognito(),
        AmplifyDataStore(modelProvider: ModelProvider.instance),
        AmplifyAPI()
      ]);

      // Certifica que o app não abra até que o amplify esteja configurado
      await Amplify.configure(amplifyconfig);
      _isAmplifyConfigured.value = true;
    } catch (e, st) {
      print("Erro ao configurar Amplify: $e");
      print("Stacktrace: $st");
    }
  }
}
