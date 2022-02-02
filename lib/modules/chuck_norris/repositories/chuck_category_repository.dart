import 'package:dio/dio.dart';
import 'package:ioasys_api_lesson/modules/chuck_norris/models/chuck_category_model.dart';
import '../../../common/consts/base_constants.dart' as consts;

class ChuckCategoryRepository {
  final Dio _dio = Dio();

  Future<List<ChuckCategoryModel>> fetchChuckCategoryData() async {
    final response = await _dio.get("${consts.urlBase}jokes/cateogries");
    return ChuckCategoryModel.fromJsonList(response.data);
  }

  // Future<List<ChuckCategoryModel>> fetchChuckCategoryData(
  //     ) async {
  //   final response =
  //       await _dio.get("${consts.urlBase}jokes/random?category=$category");
  // }
}
