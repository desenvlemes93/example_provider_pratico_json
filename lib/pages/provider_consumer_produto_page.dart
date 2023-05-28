import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_com_json/pages/controlller/product_controller.dart';

class ProviderConsumerProdutoPage extends StatefulWidget {
  const ProviderConsumerProdutoPage({super.key});

  @override
  State<ProviderConsumerProdutoPage> createState() =>
      _ProviderConsumerProdutoPageState();
}

class _ProviderConsumerProdutoPageState
    extends State<ProviderConsumerProdutoPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProductController>().buscarProduct();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Busca do produto'),
      ),
      body: Consumer<ProductController>(
        builder: (__, controller, _) {
          return ListView.builder(
            itemCount: controller.teste.length,
            itemBuilder: (context, index) {
              var produto = controller.teste[index];
              return ListTile(
                title: Text(produto.name),
                subtitle: Text('${produto.preco}'),
              );
            },
          );
        },
      ),
    );
  }
}
