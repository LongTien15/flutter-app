//Các hàm dùng chung cho repo viết vào đay, check choác, convert
import 'dart:convert';

/*
Check format json để truyền vào body api cho đúng 
- param: chuỗi cần check
- return: true nếu đúng format và false nếu ngược lại
*/
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
