import 'package:flutter/material.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';
import 'package:mangxahoi/pages/login/forgetPass.dart';
import 'package:mangxahoi/pages/login/formRegister/registerPage.dart';
import 'package:mangxahoi/pages/login/formRegister/registerSussess.dart';
import 'package:mangxahoi/pages/login/login.dart';

void main() {
  runApp(const MyApp());
}

 ThemeData _baseTheme = ThemeData(
   fontFamily: "Roboto",
   canvasColor: Colors.transparent,
  );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => const OnBoardingPage(),
      //   '/second': (context) => const TestNe(),
      // },
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color.fromARGB(255, 207, 207, 207),
      ),
      home: const loginPage(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the HomeScreen widget.
        // '/': (context) => const HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/forgetpass': (context) => const forgetPassComponent(),
        '/login': (context) => const loginPage(),
        '/createaccount': (context) => const registerPage(),
        '/registersussess': (context) => const registerSussess(),
        '/feed': (context) => const feedHome(),
      },
    );
  }
}
