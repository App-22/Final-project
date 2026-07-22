import 'package:dio/dio.dart';
import '../../models/productModel.dart';

class ApiService {
 final Dio dio = Dio();

Future<List<ProductModel>> getProducts() async {
  final response = await dio.get(
    'https://fakestoreapi.com/products',
  );

  final List data = response.data;

  return data
      .map((e) => ProductModel.fromJson(e))
      .toList();
}
}