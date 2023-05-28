import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page com Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/products'),
              child: const Text('Buscar Produtos'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed('/productsSelector'),
              child: const Text('Buscar Produtos com Selector'),
            ),
          ],
        ),
      ),
    );
  }
}
