import 'package:http/http.dart' as http;

/* 
- get method request
- params: 
  + urlString:  api url dưới dạng string
- return: raw data dưới dạng biến Response hoặc ném Exception nếu gặp lỗi   
*/
Future<http.Response> makeGetRequest(String urlString) async {
  try {
    final http.Response res = await http.get(Uri.parse(urlString));
    return res;
  } on Exception {
    throw ('Get Request Error');
  }
}

/* 
- post  method request
- params: 
  + urlString:  api url dưới dạng string
  + bodyInJson: body json cần truyền dưới dạng string
- return: raw data dưới dạng biến Response hoặc ném Exception nếu gặp lỗi   
*/
Future<http.Response> makePostRequest(
    String urlString, String bodyInJson) async {
  Map<String, String> headers = {'Content-type': "application/json"};
  try {
    final http.Response res = await http.post(Uri.parse(urlString),
        headers: headers, body: bodyInJson);
    return res;
  } on Exception {
    throw ('Post Request Error');
  }
}

/* 
- put method request
- params: 
  + urlString:  api url dưới dạng string
  + bodyInJson: body json cần truyền dưới dạng string
- return: raw data dưới dạng biến Response hoặc ném Exception nếu gặp lỗi  
*/
Future<http.Response> makePutRequest(
    String urlString, String bodyInJson) async {
  Map<String, String> headers = {'Content-type': "application/json"};
  try {
    final http.Response res = await http.put(Uri.parse(urlString),
        headers: headers, body: bodyInJson);
    return res;
  } on Exception {
    throw ('Put Request Error');
  }
}

/* 
- patch method request  
- params: 
  - urlString:  api url dưới dạng string
  - bodyInJson: body json cần truyền dưới dạng string
- return: raw data dưới dạng biến Response hoặc ném Exception nếu gặp lỗi    
*/
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

/* 
- delete method request  
- params: 
  - urlString:  api url dưới dạng string
- return: raw data dưới dạng biến Response hoặc ném Exception nếu gặp lỗi    
*/
Future<http.Response> deleteRequest(String urlString) async {
  try {
    final http.Response res = await http.delete(Uri.parse(urlString));
    return res;
  } on Exception {
    throw ('Delete Request Error');
  }
}
