import 'package:app_treino/switch_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                  child: Image.asset('assets/br.jpg'),
                ),
                accountName: const Text('Luiz Braga'),
                accountEmail: const Text('luiz@hotmail.com')),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    trailing: const Text(
                      'Menu',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.of(context).pop('/home');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    trailing: const Text(
                      'Sair',
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const SwitchWidget(),
        ],
        title: const Center(
          child: Text(
            'LovePepole',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Center(
                child: Image.asset('assets/logo.png'),
              ),
            ),
            const Text(
              'Voce esta na LovePeople',
              style: TextStyle(
                  fontSize: 27,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Seja muito bem vindo!!!',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple),
                      child: Image.asset('assets/cor.png'),
                    ),
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple),
                      child: Image.asset('assets/cor.png'),
                    ),
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple),
                      child: Image.asset('assets/cor.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
