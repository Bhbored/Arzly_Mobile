import 'package:dio/dio.dart';
import 'package:logger/web.dart';

class CarApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://vpic.nhtsa.dot.gov/api/vehicles/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );
  final logger = Logger();

  String _faviconLogoUrlForMakeName(String makeName) {
    final trimmed = makeName.trim();
    if (trimmed.isEmpty) return '';
    var slug = trimmed.toLowerCase();
    slug = slug.replaceAll(RegExp(r'\s+'), '');
    slug = slug.replaceAll(RegExp(r'[^a-z0-9.-]'), '');
    if (slug.isEmpty) return '';
    final host = slug.contains('.') ? slug : '$slug.com';
    return 'https://www.google.com/s2/favicons?domain=${Uri.encodeComponent(host)}&sz=128';
  }

  Future<Map<String, String>> fetchBrandsWithLogos() async {
    try {
      final response = await _dio.get('GetMakesForVehicleType/car?format=json');

      if (response.statusCode == 200) {
        final List results = response.data['Results'];
        Map<String, String> brandsMap = {};

        for (var item in results) {
          String name = item['MakeName'].toString().trim();
          final logoUrl = _faviconLogoUrlForMakeName(name);
          if (logoUrl.isEmpty) continue;

          brandsMap[name] = logoUrl;
        }
        return brandsMap;
      }
      return {};
    } catch (e) {
      logger.e("Error fetching brands: $e");
      return {};
    }
  }

  Future<List<String>> fetchModelsForBrand(String brandName) async {
    try {
      final encoded = Uri.encodeComponent(brandName.trim());
      final response = await _dio.get('getmodelsformake/$encoded?format=json');

      if (response.statusCode == 200) {
        final List results = response.data['Results'];
        return results.map((m) => m['Model_Name'].toString()).toSet().toList();
      }
      return [];
    } catch (e) {
      logger.e("Error fetching models for $brandName: $e");
      return [];
    }
  }
}
