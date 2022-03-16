import 'dart:convert';
import 'package:http/http.dart' as http;

class RemoteApi {
  static Future<bool> apicall() async {
    var client = http.Client();
    var header = {'q': 'bookname'};
    var uri = Uri.https('www.googleapis.com', '/books/v1/volumes/', header);

    var respone = await client.get(uri);
    var decode = jsonDecode(respone.body);
    print(decode);
    if (respone.statusCode == true) {
      return true;
    } else {
      return false;
    }
  }
}


// var client = http.Client();
// try {
//   var response = await client.post(
//       Uri.https('example.com', 'whatsit/create'),
//       body: {'name': 'doodle', 'color': 'blue'});
//   var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
//   var uri = Uri.parse(decodedResponse['uri'] as String);
//   print(await client.get(uri));
// } finally {
//   client.close();
// }