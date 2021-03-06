import 'package:app_login/switch_widget.dart';
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
              currentAccountPicture:
                  ClipOval(child: Image.asset('assets/logo.png')),
              accountName: const Text('Love People'),
              accountEmail: const Text('lovepeople.com.br'),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.menu),
                    title: const Text(
                      'Menu',
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(
                      'Curso LovePeople',
                      style: TextStyle(
                          color: Colors.purple, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                leading: const Icon(Icons.login),
                title: const Text(
                  'Sair',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          SwitchWidget(),
        ],
        title: const Center(
          child: Text('Home Page'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              const Text(
                'Somos a LovePeople',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Seja muito bem vindo !!!',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[300],
                      ),
                      child: Image.asset('assets/cor.png'),
                    ),
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[300],
                      ),
                      child: Image.asset('assets/cor.png'),
                    ),
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple[300],
                      ),
                      child: Image.asset('assets/cor.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
