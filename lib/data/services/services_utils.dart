//Các hàm dùng chung cho repo viết vào đay
import 'dart:convert';

//Check chuỗi đúng format json chưa
bool parseToJson(String str) {
  var isDecoded = false;
  try {
    json.decode(str) as Map<String, String>;
    isDecoded = true;
  } on FormatException catch (ex) {
    throw (ex.message);
  }

  return isDecoded;
}
