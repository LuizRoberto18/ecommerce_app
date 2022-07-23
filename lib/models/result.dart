import 'dart:convert';

class Result {
  final int? responseCode;
  final String? responseMessage;
  final dynamic responseData;

  Result({
    this.responseCode,
    this.responseMessage,
    this.responseData,
  });

  //Mapping Json data
  factory Result.fromJSON(Map<String, dynamic> jsonMap) {
    var list = jsonMap["responseData"] as List;
    final data = Result(
        responseCode: jsonMap["responseCode"],
        responseMessage: jsonMap["responseMessage"],
        responseData: list);
    return data;
  }
}
