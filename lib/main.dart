import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:rider_app/login_screen.dart';
import 'package:rider_app/main_screen.dart';
import 'package:rider_app/registeration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

DatabaseReference usersRef = FirebaseDatabase.instance.ref().child("users");

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Brand Bold",
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      initialRoute: MainScreen.idScreen,
      routes: {
        Registeration.idScreen: (context) => const Registeration(),
        LoginScreen.idScreen: (context) => const LoginScreen(),
        MainScreen.idScreen: (context) => const MainScreen(),
      },
    );
  }
}
