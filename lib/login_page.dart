import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Login',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      backgroundColor: Colors.purple[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(child: Image.asset('assets/logo.png')),
            ),
            Card(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (text) {
                  email = text;
                },
                decoration: const InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                obscureText: true,
                onChanged: (text) {
                  password = text;
                },
                decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (email == 'lovepeople@gmail.com' && password == '123') {
                  Navigator.of(context).pushReplacementNamed('/home');
                }
              },
              child: const Text(
                'Entrar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
