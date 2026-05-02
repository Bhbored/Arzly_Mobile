import 'package:arzly/core/utils/http_method.dart';

extension HttpMethodX on HttpMethod {
  String get value => switch (this) {
    HttpMethod.get => 'GET',
    HttpMethod.post => 'POST',
    HttpMethod.put => 'PUT',
    HttpMethod.patch => 'PATCH',
    HttpMethod.delete => 'DELETE',
  };
}
