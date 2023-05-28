import 'package:dio/dio.dart';
import 'package:provider_example_com_json/models/product_model.dart';

class ProductRepository {
  Future<List<ProductModel>> buscarProduct() async {
    final _dio = Dio();

    final resultData = await _dio.get('http://192.168.0.106:8080/products');
    return resultData.data
        .map<ProductModel>((product) => ProductModel.fromMap(product))
        .toList();
  }
}
