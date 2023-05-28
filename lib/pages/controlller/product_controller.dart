import 'package:flutter/material.dart';
import 'package:provider_example_com_json/models/product_model.dart';
import 'package:provider_example_com_json/repository/product_repository.dart';

class ProductController extends ChangeNotifier {
  final productRepository = ProductRepository();
  var productModel = ProductModel(
    id: 0,
    name: 'name',
    preco: 0,
  );
  var teste = <ProductModel>[];

  Future<void> buscarProduct() async {
    teste.clear();
    final producto = await productRepository.buscarProduct();
    teste.addAll(producto);
  }
}
