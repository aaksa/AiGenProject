import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class OpenaiCall {
  static Future<ApiCallResponse> call({
    String? apikey = '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',
    String? search = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "user",
      "content": "${search}"
    }
  ],
  "temperature": 0.5,
  "max_tokens": 1000,
  "top_p": 1,
  "frequency_penalty": 0.52,
  "presence_penalty": 0.5
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'openai',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  static String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.type''',
      ));
}

class PostLinkedinCall {
  static Future<ApiCallResponse> call({
    String? liToken =
        'AQW16NK1eVUFfeGcmu6O0igsUcflJNBQ_CF-UkQTL255CyVNdXI2MANXmDNg0ZL9N33V_NkMdU-Cy3lGW05VW4Fes5ko01jDdv-0TLmVOrZ3TmSSxNtxxZ5rQyjca11-m0w5-GasrfwohtLDOgjT-c_34L7zYkC7UDYnQgkDQFu47KwK0StpPEsQpSZBagtPVPSUHVdpO_ZMH4RtBeKt3BkLOc4Jy1dHsHOF7BeARYf_Ae3cgUIg7Q2lV0QFZBSwKRZgYrna9OF0H6gFAKHMgPJDr_dt8q7PSEN7rf0816XpmRehWm7OUW1jt2DhI4u31_xk8UQ8CEyxFlpdmHeEY08RZifctA',
    String? liUser = 'tjLub6LCCP',
    String? authorstring = 'urn:li:person:tjLub6LCCP',
    String? body = '',
  }) async {
    final ffApiRequestBody = '''
{
  "author": "${authorstring}",
  "lifecycleState": "PUBLISHED",
  "specificContent": {
    "com.linkedin.ugc.ShareContent": {
      "shareCommentary": {
        "text": "${body}"
      },
      "shareMediaCategory": "NONE"
    }
  },
  "visibility": {
    "com.linkedin.ugc.MemberNetworkVisibility": "CONNECTIONS"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postLinkedin',
      apiUrl: 'https://api.linkedin.com/v2/ugcPosts',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer  ${liToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic? errorDetails(dynamic response) => getJsonField(
        response,
        r'''$.errorDetails''',
      );
  static dynamic inputErrors(dynamic response) => getJsonField(
        response,
        r'''$.errorDetails.inputErrors''',
      );
  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? urn(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class OpenaiPicCall {
  static Future<ApiCallResponse> call({
    String? token = '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',
    String? descr = '',
  }) async {
    final ffApiRequestBody = '''
{
  "model": "dall-e-3",
  "prompt": "${descr}",
  "size": "1024x1024",
  "quality": "standard",
  "n": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'openaiPic',
      apiUrl: 'https://api.openai.com/v1/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? errorCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.code''',
      ));
  static String? errorMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.error.message''',
      ));
  static String? errorType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error.type''',
      ));
  static int? openID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created''',
      ));
  static String? prompt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].revised_prompt''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].url''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
