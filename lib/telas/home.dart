import 'package:aula_10_08/telas/sobre.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Principal'),
        backgroundColor: const Color(0xFF556B2F),
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    width: 150,
                    height: 100,
                    image: AssetImage('images/upf.png'),
                  ),
                  Text(
                    'App Aula',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('Contador'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.of(context).pushNamed('/contador');
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Sobre o app'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.of(context).pushNamed('/sobre');
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Sobre o app'),
              onTap: () {
                Navigator.pop(context); // close the drawer
                Navigator.of(context).pushNamed('/sobre');
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Bem-vindo ao aplicativo!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://picsum.photos/400/220',
                height: 220,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    height: 220,
                    child: Center(child: Text('Imagem indisponível')),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF556B2F),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/contador');
              },
              child: const Text('Ir para Contador'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF556B2F),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SobrePage()),
                );
              },
              child: const Text('Ir para Sobre App'),
            ),
          ],
        ),
      ),
    );
  }
}
