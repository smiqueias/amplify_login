import 'package:flutter/material.dart';

class AmplifyConfigured extends StatelessWidget {
  const AmplifyConfigured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Amplify Configured',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}