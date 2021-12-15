import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Image.asset('assets/logo.png'),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (text) {
                email = text;
              },
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (text) {
                password = text;
              },
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                if (email == 'luizao@hotmail.com' && password == '123')
                  // ignore: curly_braces_in_flow_control_structures
                  Navigator.of(context).pushReplacementNamed('/home');
              },
              child: const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
