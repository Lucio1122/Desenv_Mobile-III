import 'package:aula_10_08/telas/contador.dart';
import 'package:aula_10_08/telas/home.dart';
import 'package:aula_10_08/telas/login.dart';
import 'package:aula_10_08/telas/sobre.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Aula',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 61, 206, 104),
        ),
      ),
      home: const LoginPage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/contador': (context) =>
            const ContadorPage(title: 'Contador de Cliques'),
        '/sobre': (context) => const SobrePage(),
      },
    );
  }
}
