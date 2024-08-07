import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:http/http.dart';

class ApiHelper
{
   Future<Map> fetchData()
   async {
     Uri url = Uri.parse('https://official-joke-api.appspot.com/random_joke');
     Response response = await http.get(url);
     if(response.statusCode == 200)
       {
         final json = response.body;
         final Map data = jsonDecode(json);
         return data;
       }
     else
       {
         return {};
       }
   }
}