import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_connect/services/auth_service.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Hello Chico!'),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: OutlinedButton(
              onPressed: () => context.read<AuthService>().logout(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Sair do App"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
