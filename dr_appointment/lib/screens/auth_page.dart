import 'package:dr_appointment/components/login_form.dart';
import 'package:dr_appointment/components/social_button.dart';
import 'package:flutter/material.dart';
import 'package:dr_appointment/utils/text.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
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
              ),
              
              ),
            Config.spaceSmall,
            //login 
           const LoginForm(),
            Config.spaceSmall,
            Center(
              child: TextButton(onPressed: (){}, 
              child: Text(
            AppText.enText['forgot_password']!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              
              ),
              ),
            ),

            //add social buttons here
            const Spacer(),
            Center
            (
              child: Text(
            AppText.enText['social_login']!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade500,
              ),
              
              ),
            ),
            Config.spaceSmall,
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SocialButton(social: 'google'),
                SocialButton(social: 'facebook')

              ],
            ),
            Config.spaceSmall,
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
            AppText.enText['signUp_text']!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.grey.shade500,
              ),
              
              ),
              const Text( 'Sign Up',
                style: TextStyle(
                  fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
              ),
                ],
            ),

          ],
        ),
      ),
    )
    );
  }
}