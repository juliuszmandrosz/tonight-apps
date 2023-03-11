import 'dart:io';

Map<String, String> getHttpHeaders() {
  return {
    HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
  };
}
