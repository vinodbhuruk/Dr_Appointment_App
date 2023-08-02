import 'package:dr_appointment/utils/text.dart';
import 'package:flutter/material.dart';

import '../components/login_form.dart';
import '../utils/config.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppText.enText['Welcome_text']!,
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              
            ),
            Config.spaceSmall,
            Text(
              AppText.enText['signIn_text']!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
            ),
            Config.spaceSmall,
            //login components here
            LoginForm(),
          ],
        )),
      ),
    
    );
  }
}