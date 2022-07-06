import 'package:http/http.dart' as http;

//get request
Future<http.Response> makeGetRequest(String urlString) async {
  try {
    final http.Response res = await http.get(Uri.parse(urlString));
    return res;
  } on Exception {
    throw ('Get Request Error');
  }
}

//post request
Future<http.Response> makePostRequest(
    String urlString, Object bodyInJson) async {
  Map<String, String> headers = {'Content-type': "application/json"};
  try {
    final http.Response res = await http.post(Uri.parse(urlString),
        headers: headers, body: bodyInJson);
    return res;
  } on Exception {
    throw ('Post Request Error');
  }
}

//put request
Future<http.Response> makePutRequest(
    String urlString, Object bodyInJson) async {
  Map<String, String> headers = {'Content-type': "application/json"};
  try {
    final http.Response res = await http.put(Uri.parse(urlString),
        headers: headers, body: bodyInJson);
    return res;
  } on Exception {
    throw ('Put Request Error');
  }
}

//patch request
Future<http.Response> makePatchRequest(
    String urlString, Object bodyInJson) async {
  Map<String, String> headers = {'Content-type': "application/json"};
  try {
    final http.Response res = await http.put(Uri.parse(urlString),
        headers: headers, body: bodyInJson);
    return res;
  } on Exception {
    throw ('Patch Request Error');
  }
}

//delete request
Future<http.Response> deleteRequest(String urlString) async {
  try {
    final http.Response res = await http.delete(Uri.parse(urlString));
    return res;
  } on Exception {
    throw ('Delete Request Error');
  }
}
