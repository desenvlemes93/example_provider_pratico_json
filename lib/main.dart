import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_com_json/pages/controlller/product_controller.dart';
import 'package:provider_example_com_json/pages/home_page.dart';
import 'package:provider_example_com_json/pages/provider_consumer_produto_page.dart';
import 'package:provider_example_com_json/pages/provider_selector_produto_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductController(),
        ),
      ],
      child: MaterialApp(
        title: 'Exemplo Usando Provider',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/products': (context) => const ProviderConsumerProdutoPage(),
          '/productsSelector': (context) => const ProviderSelectorProdutoPage(),
        },
        home: const HomePage(),
      ),
    );
  }
}
