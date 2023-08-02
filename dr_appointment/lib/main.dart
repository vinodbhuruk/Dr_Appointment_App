import 'package:dr_appointment/screens/auth_page.dart';
import 'package:dr_appointment/utils/config.dart';
import 'package:dr_appointment/utils/main_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //  this is for push navigator

  static final navigatorKey =GlobalKey<NavigatorState>();


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // define Theme Data
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Dr Appointment App',
      theme: ThemeData(
        // This is predfine  input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.OutlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.OutlinedBorder,
          floatingLabelStyle: TextStyle(
            color:Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        )
      ),
      initialRoute: '/',
      routes: {
        // this is intial route of app
        '/':(context) => const AuthPage(),
        // this for main layout after login
        'main': (context) =>  const MainLayout(),
      },

    );
  }
}

// login page Component