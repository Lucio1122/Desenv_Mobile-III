import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>(); // 1. Criando a chave global
  Login login = Login();

  void _autenticar() {

    if (login.usuario == 'lucio' && login.senha == '123456') {
      Navigator.popAndPushNamed(context, '/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Usuário ou senha inválidos!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Usuário',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Deve informar o usuário!';
                }
                if (value.length < 2) {
                  return 'O usuário deve ter no mínimo 2 caracteres!';
                }
                login.usuario = value;
                return null;
              },
            ),
            SizedBox(height: 20.0), // Espaçamento entre os campos

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Deve informar a senha!';
                }
                if (value.length < 6) {
                  return 'A senha deve ter no mínimo 6 caracteres!';
                }
                login.senha = value;
                return null;
              },
            ),
            SizedBox(height: 20.0), // Espaçamento entre os campos

            ElevatedButton.icon(
              icon: const Icon(Icons.login),
              label: const Text('Login'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _autenticar();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Login {
  String usuario = '';
  String senha = '';
}
