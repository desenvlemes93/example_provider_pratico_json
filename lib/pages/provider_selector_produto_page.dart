import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example_com_json/pages/controlller/product_controller.dart';

class ProviderSelectorProdutoPage extends StatefulWidget {
  const ProviderSelectorProdutoPage({super.key});

  @override
  State<ProviderSelectorProdutoPage> createState() =>
      _ProviderSelectorProdutoPageState();
}

class _ProviderSelectorProdutoPageState
    extends State<ProviderSelectorProdutoPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('intiState');
      context.read<ProductController>().buscarProduct();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selector'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: const Text('Brincando com Selector'),
          ),
          Selector<ProductController, String>(
            selector: (_, controllerr) {
              return controllerr.teste.map((e) => e.name).toString();
            },
            builder: (_, name, __) {
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(name),
                ],
              );
            },
          ),
          const Text('rICARDO'),
        ],
      ),
    );
  }
}
