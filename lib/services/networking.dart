import 'package:http/http.dart' as http;
import 'dart:convert';

class NetWorkHelper {
  NetWorkHelper({this.url});

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    print('NetWorkHelper : getData()  Called');

    if (response.statusCode == 200) {
      // response.statusCode : status of response api ex. show error fetch data statusCode 404 which statusCode 200 it mean data is ready used.
      String data = response.body; // Json data

      var jsonDecoded =
          jsonDecode(data); // decode(unpack) json data dynamic type
      return jsonDecoded;
    } else {
      print(response.statusCode);
    }
  }
}
